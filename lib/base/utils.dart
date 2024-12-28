import 'package:flutter/material.dart';
import 'package:flutter_rn_components/base/view_style.dart';

class BaseCompUtils {
  static EdgeInsets? _getEdgeInsets({
    double? all,
    double? horizontal,
    double? vertical,
    double? left,
    double? top,
    double? right,
    double? bottom,
  }) {
    if (all != null) return EdgeInsets.all(all);
    if (horizontal != null || vertical != null) {
      return EdgeInsets.symmetric(
        horizontal: horizontal ?? 0.0,
        vertical: vertical ?? 0.0,
      );
    }
    return EdgeInsets.fromLTRB(
      left ?? 0.0,
      top ?? 0.0,
      right ?? 0.0,
      bottom ?? 0.0,
    );
  }

  static EdgeInsets? getPadding(ViewStyle? style) {
    return _getEdgeInsets(
      all: style?.padding,
      horizontal: style?.paddingHorizontal,
      vertical: style?.paddingVertical,
      left: style?.paddingLeft,
      top: style?.paddingTop,
      right: style?.paddingRight,
      bottom: style?.paddingBottom,
    );
  }

  static EdgeInsets? getMargin(ViewStyle? style) {
    return _getEdgeInsets(
      all: style?.margin,
      horizontal: style?.marginHorizontal,
      vertical: style?.marginVertical,
      left: style?.marginLeft,
      top: style?.marginTop,
      right: style?.marginRight,
      bottom: style?.marginBottom,
    );
  }

  static BoxBorder? getBorder(ViewStyle? style) {
    final borders = <BorderSide>[
      BorderSide(
        color: style?.borderTopColor ?? Colors.transparent,
        width: style?.borderTopWidth ?? 0.0,
      ),
      BorderSide(
        color: style?.borderBottomColor ?? Colors.transparent,
        width: style?.borderBottomWidth ?? 0.0,
      ),
      BorderSide(
        color: style?.borderLeftColor ?? Colors.transparent,
        width: style?.borderLeftWidth ?? 0.0,
      ),
      BorderSide(
        color: style?.borderRightColor ?? Colors.transparent,
        width: style?.borderRightWidth ?? 0.0,
      ),
    ];

    // Check if borders are uniform
    if (borders.every((border) =>
        border.color == borders[0].color && border.width == borders[0].width)) {
      return Border.all(
        color: borders[0].color,
        width: borders[0].width,
      );
    }

    return Border(
      top: borders[0],
      bottom: borders[1],
      left: borders[2],
      right: borders[3],
    );
  }

  static BoxShadow? getBoxShadow(ViewStyle? style) {
    if (style?.shadowColor != null) {
      return BoxShadow(
        color: style!.shadowColor!,
        blurRadius: style?.shadowBlurRadius ?? 0.0,
        spreadRadius: style?.shadowSpreadRadius ?? 0.0,
        offset: style?.shadowOffset ?? const Offset(0, 0),
      );
    }
    return null;
  }
}
