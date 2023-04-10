// ignore_for_file: non_constant_identifier_names

library hello;

import 'package:flutter/material.dart';
import 'package:hello/src/attributes/padding_custom/padding_custom.dart';
import 'package:hello/src/holders/containers/all_rounded_container.dart';

StatelessWidget AllRoundedContainer({
  // Border
  List<BoxShadow>? boxShadowList,
  double? bottomLeftRadius,
  double? bottomRightRadius,
  double? topLeftRadius,
  double? topRightRadius,
  double? allCornerRadius,
  Color? borderColor,
  double? borderWidth,

  // Margin
  double? topMargin,
  double? bottomMargin,
  double? leftMargin,
  double? rightMargin,
  double? verticalMargin,
  double? horizontalMargin,
  double? allMargin,

  // Padding
  double? topPadding,
  double? bottomPadding,
  double? leftPadding,
  double? rightPadding,
  double? verticalPadding,
  double? horizontalPadding,
  double? allPadding,

  // Basic
  Color? color,
  double? height,
  double? width,
  Widget? child,
}) =>
    AllRoundedContainers(
      // Margin
      leftMargin: leftMargin,
      rightMargin: rightMargin,
      topMargin: topMargin,
      bottomMargin: bottomMargin,
      verticalMargin: verticalMargin,
      horizontalMargin: horizontalMargin,
      allMargin: allMargin,
      // Padding
      leftPadding: leftPadding,
      rightPadding: rightPadding,
      topPadding: topPadding,
      bottomPadding: bottomPadding,
      verticalPadding: verticalPadding,
      horizontalPadding: horizontalPadding,
      allPadding: allPadding,
      // Border
      bottomLeftRadius: bottomLeftRadius,
      bottomRightRadius: bottomRightRadius,
      topLeftRadius: topLeftRadius,
      topRightRadius: topRightRadius,
      allCornerRadius: allCornerRadius,
      borderColor: borderColor,
      borderWidth: borderWidth,
      boxShadowList: boxShadowList,
      // Basic
      height: height,
      width: width,
      color: color,
      child: child,
    );

StatelessWidget PaddingCustom({
  // Padding
  double? topPadding,
  double? bottomPadding,
  double? leftPadding,
  double? rightPadding,
  double? verticalPadding,
  double? horizontalPadding,
  double? allPadding,

  // Basic
  Widget? child,
}) =>
    PaddingCustoms(
      // Padding
      leftPadding: leftPadding,
      rightPadding: rightPadding,
      topPadding: topPadding,
      bottomPadding: bottomPadding,
      verticalPadding: verticalPadding,
      horizontalPadding: horizontalPadding,
      allPadding: allPadding,
      // Basic
      child: child,
    );

extension ClickExtension on Widget {
  /// Adds on click with splash effect.
  Widget onClickSplash(void Function() onClickFunction) {
    return InkWell(
      onTap: onClickFunction,
      child: this,
    );
  }

  /// Adds on click without splash effect.
  Widget onClick(void Function() onClickFunction) {
    return GestureDetector(
      onTap: onClickFunction,
      child: this,
    );
  }
}
