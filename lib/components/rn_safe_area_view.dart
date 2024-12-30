import 'package:flutter/material.dart';
import 'package:flutter_rn_components/base/view_style.dart';
import 'package:flutter_rn_components/components/rn_view.dart';

class RNSafeAreaView extends RNView {
  RNSafeAreaView({required super.children, super.style, super.key});

  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;

    return RNView(
      style: ViewStyle(
          paddingTop: padding.top,
          paddingBottom: padding.bottom,
          paddingLeft: padding.left,
          paddingRight: padding.left),
      children: [
        RNView(
          style: style,
          children: children,
        )
      ],
    );
  }
}
