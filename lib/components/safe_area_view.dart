import 'package:flutter/material.dart';
import 'package:flutter_rn_components/base/view_style.dart';
import 'package:flutter_rn_components/components/view.dart' as reactnative;

class SafeAreaView extends reactnative.View {
  SafeAreaView({required super.children, super.style, super.key});

  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;

    return reactnative.View(
      style: ViewStyle(
          paddingTop: padding.top,
          paddingBottom: padding.bottom,
          paddingLeft: padding.left,
          paddingRight: padding.left),
      children: [
        reactnative.View(
          style: style,
          children: children,
        )
      ],
    );
  }
}
