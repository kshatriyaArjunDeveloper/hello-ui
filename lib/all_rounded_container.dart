import 'package:flutter/material.dart';
import 'package:hello/src/holders/ui_interface.dart';

class AllRoundedContainers extends StatelessWidget
    implements SpecialAttributeWidgetInterface, SlotInterface {
  AllRoundedContainers({
    Key? key,
    //Styling
    this.gradient,
    // Margin
    this.leftMargin,
    this.rightMargin,
    this.topMargin,
    this.bottomMargin,
    this.verticalMargin,
    this.horizontalMargin,
    this.allMargin,
    // Padding
    this.leftPadding,
    this.rightPadding,
    this.topPadding,
    this.bottomPadding,
    this.verticalPadding,
    this.horizontalPadding,
    this.allPadding,
    // Border
    this.bottomLeftRadius,
    this.bottomRightRadius,
    this.topLeftRadius,
    this.topRightRadius,
    this.allCornerRadius,
    this.boxShadowList,
    this.borderColor,
    this.borderWidth,
    // Basic
    this.shouldMakeCircle = false,
    this.height,
    this.width,
    this.color,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      clipBehavior: Clip.antiAlias,
      padding: EdgeInsets.only(
        left: leftPadding ?? horizontalPadding ?? allPadding ?? 0,
        right: rightPadding ?? horizontalPadding ?? allPadding ?? 0,
        top: topPadding ?? verticalPadding ?? allPadding ?? 0,
        bottom: bottomPadding ?? verticalPadding ?? allPadding ?? 0,
      ),
      margin: EdgeInsets.only(
        left: leftMargin ?? horizontalMargin ?? allMargin ?? 0,
        right: rightMargin ?? horizontalMargin ?? allMargin ?? 0,
        top: topMargin ?? verticalMargin ?? allMargin ?? 0,
        bottom: bottomMargin ?? verticalMargin ?? allMargin ?? 0,
      ),
      decoration: BoxDecoration(
        shape: shouldMakeCircle ? BoxShape.circle : BoxShape.rectangle,
        borderRadius: shouldMakeCircle
            ? null
            : BorderRadius.only(
                topLeft: Radius.circular(topLeftRadius ?? allCornerRadius ?? 0),
                topRight:
                    Radius.circular(topRightRadius ?? allCornerRadius ?? 0),
                bottomLeft:
                    Radius.circular(bottomLeftRadius ?? allCornerRadius ?? 0),
                bottomRight:
                    Radius.circular(bottomRightRadius ?? allCornerRadius ?? 0),
              ),
        border: Border.all(
          color: borderColor ?? Colors.transparent,
          width: borderWidth ?? 0,
        ),
        color: color,
        gradient: gradient,
        boxShadow: boxShadowList,
      ),
      child: child,
    );
  }

  // Styling
  final Gradient? gradient;

  // Border
  final List<BoxShadow>? boxShadowList;

  @override
  late final double? allCornerRadius;

  @override
  late double? bottomLeftRadius;

  @override
  late double? bottomRightRadius;

  @override
  late double? topLeftRadius;

  @override
  late double? topRightRadius;

  @override
  late final Color? borderColor;

  @override
  late final double? borderWidth;

  // Margin
  @override
  late final double? topMargin;

  @override
  late final double? bottomMargin;

  @override
  late final double? leftMargin;

  @override
  late final double? rightMargin;

  @override
  late final double? verticalMargin;

  @override
  late final double? horizontalMargin;

  @override
  late final double? allMargin;

  // Padding
  @override
  late final double? topPadding;

  @override
  late final double? bottomPadding;

  @override
  late final double? leftPadding;

  @override
  late final double? rightPadding;

  @override
  late final double? verticalPadding;

  @override
  late final double? horizontalPadding;

  @override
  late final double? allPadding;

  // Basic
  @override
  late final Color? color;

  @override
  late final double? height;

  @override
  late final double? width;

  @override
  late final Widget? child;

  final bool shouldMakeCircle;
}
