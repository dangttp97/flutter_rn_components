import 'package:flutter/material.dart';
import 'package:flutter_rn_components/base/view_style.dart';
import 'package:flutter_rn_components/components/view.dart' as reactnative;

class Pressable extends StatelessWidget {
  List<Widget>? children;
  GestureTapCallback? onPress;
  GestureLongPressCallback? onLongPress;
  ViewStyle? style;

  Pressable(
      {super.key, this.children, this.onPress, this.onLongPress, this.style});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      onLongPress: onLongPress,
      child: reactnative.View(
        style: style,
        children: children ?? [],
      ),
    );
  }
}
