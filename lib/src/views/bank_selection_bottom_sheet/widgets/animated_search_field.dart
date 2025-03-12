import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/bank_institutions_controller.dart';
import 'package:atoa_flutter_sdk/src/theme/figtree_text_theme.dart';
import 'package:flutter/material.dart';
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

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..addStatusListener((status) async {
        if (status == AnimationStatus.completed) {
          await Future<void>.delayed(const Duration(milliseconds: 500));
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
  Widget build(BuildContext context) => RegalSearchBar(
        searchController: widget.controller,
        semanticsLabel: 'Banks Search Bar',
        onChanged: (value) {
          context.read<BankInstitutionsController>().search(value.trim());
        },
        showFloatingLabel: FloatingLabelBehavior.never,
        fillColor: NeutralColors.light().grey.shade50,
        onClear: () {
          context.read<BankInstitutionsController>().search('');
        },
        textStyle: kFigtreeTextTheme.labelSmall?.w600,
        border: BorderSide(color: NeutralColors.light().grey.shade200),
        isLightMode: true,
        label: Row(
          children: [
            CustomText.semantics(
              context.l10n.searchYour,
              style: kFigtreeTextTheme.labelSmall?.w500.textColor(
                NeutralColors.light().grey.shade500,
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
                          style: kFigtreeTextTheme.labelSmall?.w500.textColor(
                            NeutralColors.light().grey.shade500,
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
                        child: Text(
                          !_showPersonalBanks
                              ? context.l10n.personalBanks
                              : context.l10n.businessBanks,
                          style: kFigtreeTextTheme.labelSmall?.w500.textColor(
                            NeutralColors.light().grey.shade500,
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
      );
}
