import 'package:flutter/material.dart';
import 'package:yogiface/theme/app_colors.dart';

/// A vertical number picker that allows users to select values by scrolling.
class VerticalNumericSelector extends StatefulWidget {
  /// The minimum selectable value.
  final int minValue;

  /// The maximum selectable value.
  final int maxValue;

  /// The step interval between selectable values.
  final int step;

  /// The initially selected value.
  final int initialValue;

  /// Whether to display the selected value.
  final bool showSelectedValue;

  /// Whether to display the label.
  final bool showLabel;

  /// The label text to display.
  final String? label;

  /// Callback function when the value changes.
  final ValueChanged<int> onValueChanged;

  /// The viewport fraction for the PageView.
  final double viewPort;

  /// The text style for the selected item.
  final TextStyle? selectedTextStyle;

  /// The text style for unselected items.
  final TextStyle? unselectedTextStyle;

  /// The background color of the picker.
  final Color? backgroundColor;

  /// The border radius of the picker.
  final BorderRadius borderRadius;

  /// Whether vibration feedback is enabled.
  final bool enableVibration;

  /// Whether to show arrows next to the selected value.
  final bool showArrows;

  /// The icon for the arrow indicator.
  final IconData? arrowIcon;

  /// The width of the picker.
  final double? width;

  /// The height of the picker.
  final double? height;

  /// Creates a vertical numeric selector widget.
  const VerticalNumericSelector({
    super.key,
    required this.minValue,
    required this.maxValue,
    required this.step,
    required this.initialValue,
    this.showLabel = true,
    this.showSelectedValue = true,
    this.label,
    required this.onValueChanged,
    required this.viewPort,
    this.selectedTextStyle,
    this.unselectedTextStyle,
    this.backgroundColor,
    this.borderRadius = const BorderRadius.all(Radius.circular(10)),
    this.enableVibration = true,
    this.showArrows = true,
    this.arrowIcon,
    this.width = 80,
    this.height = 280,
  });

  @override
  State<VerticalNumericSelector> createState() =>
      _VerticalNumericSelectorState();
}

class _VerticalNumericSelectorState extends State<VerticalNumericSelector> {
  late PageController _pageController;
  late int selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.initialValue;
    _initializePageController();
  }

  void _initializePageController() {
    _pageController = PageController(
      initialPage: (selectedValue - widget.minValue) ~/ widget.step,
      viewportFraction: widget.viewPort,
    );
  }

  @override
  void didUpdateWidget(covariant VerticalNumericSelector oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.viewPort != widget.viewPort) {
      _pageController.dispose();
      _initializePageController();
      setState(() {});
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: widget.width,
              height: widget.height,
              child: PageView.builder(
                controller: _pageController,
                scrollDirection: Axis.vertical,
                itemCount:
                    (widget.maxValue - widget.minValue) ~/ widget.step + 1,
                onPageChanged: (index) async {
                  final newValue = widget.minValue + index * widget.step;

                  setState(() {
                    selectedValue = newValue;
                    widget.onValueChanged(selectedValue);
                  });
                },
                itemBuilder: (context, index) {
                  final value = widget.minValue + index * widget.step;
                  final isSelected = selectedValue == value;
                  final distance = (value - selectedValue).abs();

                  // Tasarım: mesafeye göre font boyutu ve renk
                  double fontSize;
                  Color color;
                  FontWeight fontWeight;

                  if (isSelected) {
                    fontSize = 40;
                    color = AppColors.onboardingButtonGradientEnd;
                    fontWeight = FontWeight.w400;
                  } else if (distance == 1) {
                    fontSize = 32;
                    color = Colors.black;
                    fontWeight = FontWeight.w500;
                  } else {
                    fontSize = 24;
                    color = AppColors.sliderInactiveNumberColor;
                    fontWeight = FontWeight.w400;
                  }

                  return GestureDetector(
                    onTap: () {
                      final targetPage = index;
                      _pageController.animateToPage(
                        targetPage,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (isSelected)
                            Container(
                              width: 60,
                              height: 1,
                              color: const Color(0xFFAB8ED9)
                                  .withValues(alpha: 0.5),
                              margin: const EdgeInsets.only(bottom: 8),
                            ),
                          AnimatedDefaultTextStyle(
                            duration: const Duration(milliseconds: 150),
                            style: widget.selectedTextStyle?.copyWith(
                                  fontSize: fontSize,
                                  color: color,
                                  fontWeight: fontWeight,
                                ) ??
                                TextStyle(
                                  fontSize: fontSize,
                                  color: color,
                                  fontWeight: fontWeight,
                                ),
                            child: Text(
                              value.toString(),
                              maxLines: 1,
                              overflow: TextOverflow.visible,
                            ),
                          ),
                          if (isSelected)
                            Container(
                              width: 60,
                              height: 1,
                              color: const Color(0xFFAB8ED9)
                                  .withValues(alpha: 0.5),
                              margin: const EdgeInsets.only(top: 8),
                            ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        if (widget.showSelectedValue) ...[
          const SizedBox(width: 16),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (widget.showArrows) ...[
                      Icon(
                        widget.arrowIcon ?? Icons.arrow_left,
                        size: 32,
                      ),
                    ],
                    Text(
                      selectedValue.toString(),
                      style: widget.selectedTextStyle ??
                          Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontSize: 32),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                if (widget.showLabel) ...[
                  Text(
                    widget.label ?? '',
                    style: widget.unselectedTextStyle ??
                        Theme.of(context).textTheme.titleLarge,
                  ),
                ]
              ],
            ),
          ),
        ]
      ],
    );
  }
}
