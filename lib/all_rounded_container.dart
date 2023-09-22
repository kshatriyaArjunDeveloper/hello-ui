import 'package:flutter/material.dart';

class Container_ extends StatelessWidget {
  Container_({
    Key? key,
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
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(topLeftRadius ?? allCornerRadius ?? 0),
          topRight: Radius.circular(topRightRadius ?? allCornerRadius ?? 0),
          bottomLeft: Radius.circular(bottomLeftRadius ?? allCornerRadius ?? 0),
          bottomRight:
              Radius.circular(bottomRightRadius ?? allCornerRadius ?? 0),
        ),
        border: Border.all(
          color: borderColor ?? Colors.transparent,
          width: borderWidth ?? 0,
        ),
        color: color,
        boxShadow: boxShadowList,
      ),
      child: child,
    );
  }

  // Border

  final List<BoxShadow>? boxShadowList;

  final double? allCornerRadius;

  double? bottomLeftRadius;

  double? bottomRightRadius;

  double? topLeftRadius;

  double? topRightRadius;

  final Color? borderColor;

  final double? borderWidth;

  // Margin

  final double? topMargin;

  final double? bottomMargin;

  final double? leftMargin;

  final double? rightMargin;

  final double? verticalMargin;

  final double? horizontalMargin;

  final double? allMargin;

  // Padding

  final double? topPadding;

  final double? bottomPadding;

  final double? leftPadding;

  final double? rightPadding;

  final double? verticalPadding;

  final double? horizontalPadding;

  final double? allPadding;

  // Basic

  final Color? color;

  final double? height;

  final double? width;

  final Widget? child;
}
