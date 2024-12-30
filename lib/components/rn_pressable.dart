import 'package:flutter/material.dart';
import 'package:flutter_rn_components/base/view_style.dart';
import 'package:flutter_rn_components/components/rn_view.dart';

class RNPressable extends StatelessWidget {
  List<Widget>? children;
  GestureTapCallback? onPress;
  GestureLongPressCallback? onLongPress;
  ViewStyle? style;

  RNPressable(
      {super.key, this.children, this.onPress, this.onLongPress, this.style});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      onLongPress: onLongPress,
      child: RNView(
        style: style,
        children: children ?? [],
      ),
    );
  }
}
