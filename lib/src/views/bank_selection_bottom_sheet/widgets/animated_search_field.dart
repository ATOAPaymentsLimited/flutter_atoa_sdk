import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/bank_institutions_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class AnimatedSearchField extends StatefulWidget {
  const AnimatedSearchField({
    required this.controller,
    super.key,
    this.animationDuration = const Duration(milliseconds: 2000),
  });

  final TextEditingController controller;
  final Duration animationDuration;

  @override
  State<AnimatedSearchField> createState() => _AnimatedSearchFieldState();
}

class _AnimatedSearchFieldState extends State<AnimatedSearchField>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _showPersonalBanks = true;
  bool _showClear = false;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(() {
      if (mounted) {
        setState(() {
          _showClear = widget.controller.text.trim().isNotEmpty;
        });
      }
    });
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..addStatusListener((status) async {
        if (status == AnimationStatus.completed) {
          await Future<void>.delayed(const Duration(seconds: 1));
          if (!mounted) return;
          setState(() {
            _showPersonalBanks = !_showPersonalBanks;
            _controller
              ..reset()
              ..forward();
          });
        }
      });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => TextField(
        controller: widget.controller,
        keyboardType: TextInputType.text,
        cursorColor: context.intactColors.black,
        decoration: InputDecoration(
          isDense: true,
          fillColor: context.neutralColors.grey.shade50,
          filled: true,
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(100),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: context.neutralColors.grey.shade200),
            borderRadius: BorderRadius.circular(100),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: context.neutralColors.grey.shade200),
            borderRadius: BorderRadius.circular(100),
          ),
          contentPadding: Spacing.large.x + Spacing.small.y + Spacing.tiny.y,
          prefixIcon: Padding(
            padding: Spacing.small.all + Spacing.tiny.all,
            child: Assets.icons.search.svg(
              colorFilter: ColorFilter.mode(
                context.intactColors.black,
                BlendMode.srcIn,
              ),
            ),
          ),
          suffixIcon: _showClear
              ? CustomGestureDetector(
                  context: context,
                  semanticsLabel: 'Clear Search Bar Icon',
                  trackLabel: 'Clear Icon Search Bar',
                  onTap: () {
                    widget.controller.clear();
                    context.read<BankInstitutionsController>().search('');
                  },
                  child: Icon(
                    Icons.clear_sharp,
                    size: 18.sp,
                    color: context.intactColors.black,
                  ),
                )
              : null,
          label: Row(
            children: [
              CustomText.semantics(
                context.l10n.searchYour,
                style: context.labelSmall?.w500.textColor(
                  context.neutralColors.grey.shade500,
                ),
              ),
              Expanded(
                child: ClipRect(
                  child: Stack(
                    children: [
                      AnimatedBuilder(
                        animation: _controller,
                        builder: (context, child) => Transform.translate(
                          offset: Offset(
                            0,
                            -30 * _controller.value,
                          ),
                          child: CustomText.semantics(
                            _showPersonalBanks
                                ? context.l10n.personalBanks
                                : context.l10n.businessBanks,
                            style: context.labelSmall?.w500.textColor(
                              context.neutralColors.grey.shade500,
                            ),
                          ),
                        ),
                      ),
                      AnimatedBuilder(
                        animation: _controller,
                        builder: (context, child) => Transform.translate(
                          offset: Offset(
                            0,
                            20 * (1 - _controller.value),
                          ),
                          child: CustomText.semantics(
                            !_showPersonalBanks
                                ? context.l10n.personalBanks
                                : context.l10n.businessBanks,
                            style: context.labelSmall?.w500.textColor(
                              context.neutralColors.grey.shade500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          floatingLabelBehavior: FloatingLabelBehavior.never,
        ),
        onChanged: (value) {
          context.read<BankInstitutionsController>().search(value.trim());
        },
        style: context.labelSmall?.w600,
      );
}
