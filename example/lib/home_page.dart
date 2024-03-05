import 'package:atoa_sdk/atoa_sdk.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  final _envNotifier = ValueNotifier(AtoaEnv.sandbox);

  AtoaEnv get env => _envNotifier.value;

  set env(AtoaEnv value) => _envNotifier.value = value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: Spacing.medium.x,
              child: RegalTextField(
                showLabel: true,
                label: 'Payment Id',
                controller: textController,
              ),
            ),
            Spacing.medium.yBox,
            Padding(
              padding: Spacing.medium.x,
              child: ValueListenableBuilder(
                  valueListenable: _envNotifier,
                  builder: (context, value, Widget? child) {
                    return SwitchListTile(
                      title: Text('is Sandbox?', style: context.bodyLarge!),
                      value: env == AtoaEnv.sandbox,
                      onChanged: (v) {
                        env = v ? AtoaEnv.sandbox : AtoaEnv.prod;
                      },
                    );
                  }),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ValueListenableBuilder(
        valueListenable: _envNotifier,
        builder: (context, value, Widget? child) => ActionButton(
          controller: textController,
          env: value,
        ),
      ),
    );
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required this.controller,
    required this.env,
  });

  final TextEditingController controller;
  final AtoaEnv env;

  void _showSheet(BuildContext context) {
    AtoaSdk.show(
      context,
      paymentId: controller.text.trim(),
      env: env,
    );
  }

  @override
  Widget build(BuildContext context) => ValueListenableBuilder(
        valueListenable: controller,
        builder: (context, value, child) {
          return RegalButton.primary(
            onPressed:
                value.text.trim().isEmpty ? null : () => _showSheet(context),
            label: 'Initiate Payment',
            trackLabel: 'Initiate Payment',
          );
        },
      );
}
