import 'package:flutter/widgets.dart';
import 'package:hello/src/ui/interface/ui_interface.dart';

class Padding_ extends StatelessWidget implements PaddingInterface {
  Padding_({
    Key? key,
    // Padding
    this.leftPadding,
    this.rightPadding,
    this.topPadding,
    this.bottomPadding,
    this.verticalPadding,
    this.horizontalPadding,
    this.allPadding,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: leftPadding ?? horizontalPadding ?? allPadding ?? 0,
        right: rightPadding ?? horizontalPadding ?? allPadding ?? 0,
        top: topPadding ?? verticalPadding ?? allPadding ?? 0,
        bottom: bottomPadding ?? verticalPadding ?? allPadding ?? 0,
      ),
      child: child,
    );
  }

  @override
  late final double? allPadding;

  @override
  late final double? bottomPadding;

  @override
  late final double? horizontalPadding;

  @override
  late final double? leftPadding;

  @override
  late final double? rightPadding;

  @override
  late final double? topPadding;

  @override
  late final double? verticalPadding;

  late final Widget? child;
}