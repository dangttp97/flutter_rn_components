import 'package:flutter/material.dart';

enum ViewPosition { relative, absolute }

class ViewStyle {
  ViewPosition? position;

  /// Flex config
  Axis? flexDirection;
  MainAxisAlignment? justifyContent;
  CrossAxisAlignment? alignItems;
  AlignmentGeometry? alignSelf;
  int? flex;
  double? spaceBetween;

  ///Dimensions config
  double? width;
  double? height;
  double? minHeight;
  double? maxHeight;
  double? minWidth;
  double? maxWidth;

  ///Padding config
  double? padding = 0.0;
  double? paddingHorizontal = 0.0;
  double? paddingVertical = 0.0;
  double? paddingLeft = 0.0;
  double? paddingTop = 0.0;
  double? paddingRight = 0.0;
  double? paddingBottom = 0.0;

  ///Margin config
  double? margin;
  double? marginHorizontal;
  double? marginVertical;
  double? marginLeft;
  double? marginTop;
  double? marginRight;
  double? marginBottom;

  ///Color config
  Color? backgroundColor;
  Color? color;

  ///Font relevant config
  FontWeight? fontWeight;
  FontStyle? fontStyle;
  double? fontSize;

  ///Text config
  TextAlign? textAlign;

  ///Shadow config
  Color? shadowColor;
  double? shadowBlurRadius;
  double? shadowSpreadRadius;
  Offset? shadowOffset;

  ///Border corner radius configs
  double? borderRadius;
  double? borderTopLeftRadius;
  double? borderTopRightRadius;
  double? borderBottomLeftRadius;
  double? borderBottomRightRadius;

  ///Border sizing config
  double? borderWidth;
  double? borderTopWidth;
  double? borderBottomWidth;
  double? borderLeftWidth;
  double? borderRightWidth;

  ///Border color config
  Color? borderColor;
  Color? borderTopColor;
  Color? borderBottomColor;
  Color? borderLeftColor;
  Color? borderRightColor;

  ViewStyle({
    this.position = ViewPosition.relative,
    this.flexDirection,
    this.justifyContent,
    this.alignItems,
    this.flex,
    this.padding,
    this.margin,
    this.paddingHorizontal,
    this.marginHorizontal,
    this.paddingVertical,
    this.marginVertical,
    this.paddingLeft,
    this.marginLeft,
    this.paddingTop,
    this.marginTop,
    this.paddingRight,
    this.marginRight,
    this.paddingBottom,
    this.marginBottom,
    this.backgroundColor,
    this.borderRadius,
    this.borderTopLeftRadius,
    this.borderTopRightRadius,
    this.borderBottomLeftRadius,
    this.borderBottomRightRadius,
    this.borderWidth,
    this.borderColor,
    this.shadowColor,
    this.shadowBlurRadius,
    this.shadowSpreadRadius,
    this.shadowOffset,
    this.borderTopColor,
    this.borderBottomColor,
    this.borderLeftColor,
    this.borderRightColor,
    this.borderTopWidth,
    this.borderBottomWidth,
    this.borderLeftWidth,
    this.borderRightWidth,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.fontStyle,
    this.alignSelf,
    this.textAlign,
    this.height,
    this.width,
    this.minWidth,
    this.maxWidth,
    this.minHeight,
    this.maxHeight,
  });

  // Merge method for combining styles
  ViewStyle? _merge(ViewStyle? other) {
    if (other == null) return this;
    return ViewStyle(
      position: other.position ?? position,
      flexDirection: other.flexDirection ?? flexDirection,
      justifyContent: other.justifyContent ?? justifyContent,
      alignItems: other.alignItems ?? alignItems,
      flex: other.flex ?? flex,
      padding: other.padding ?? padding,
      margin: other.margin ?? margin,
      paddingHorizontal: other.paddingHorizontal ?? paddingHorizontal,
      marginHorizontal: other.marginHorizontal ?? marginHorizontal,
      paddingVertical: other.paddingVertical ?? paddingVertical,
      marginVertical: other.marginVertical ?? marginVertical,
      paddingLeft: other.paddingLeft ?? paddingLeft,
      marginLeft: other.marginLeft ?? marginLeft,
      paddingTop: other.paddingTop ?? paddingTop,
      marginTop: other.marginTop ?? marginTop,
      paddingRight: other.paddingRight ?? paddingRight,
      marginRight: other.marginRight ?? marginRight,
      paddingBottom: other.paddingBottom ?? paddingBottom,
      marginBottom: other.marginBottom ?? marginBottom,
      backgroundColor: other.backgroundColor ?? backgroundColor,
      borderRadius: other.borderRadius ?? borderRadius,
      borderTopLeftRadius: other.borderTopLeftRadius ?? borderTopLeftRadius,
      borderTopRightRadius: other.borderTopRightRadius ?? borderTopRightRadius,
      borderBottomLeftRadius:
          other.borderBottomLeftRadius ?? borderBottomLeftRadius,
      borderBottomRightRadius:
          other.borderBottomRightRadius ?? borderBottomRightRadius,
      borderWidth: other.borderWidth ?? borderWidth,
      borderColor: other.borderColor ?? borderColor,
      shadowColor: other.shadowColor ?? shadowColor,
      shadowBlurRadius: other.shadowBlurRadius ?? shadowBlurRadius,
      shadowSpreadRadius: other.shadowSpreadRadius ?? shadowSpreadRadius,
      shadowOffset: other.shadowOffset ?? shadowOffset,
      borderTopColor: other.borderTopColor ?? borderTopColor,
      borderBottomColor: other.borderBottomColor ?? borderBottomColor,
      borderLeftColor: other.borderLeftColor ?? borderLeftColor,
      borderRightColor: other.borderRightColor ?? borderRightColor,
      borderTopWidth: other.borderTopWidth ?? borderTopWidth,
      borderBottomWidth: other.borderBottomWidth ?? borderBottomWidth,
      borderLeftWidth: other.borderLeftWidth ?? borderLeftWidth,
      borderRightWidth: other.borderRightWidth ?? borderRightWidth,
      fontSize: other.fontSize ?? fontSize,
      fontWeight: other.fontWeight ?? fontWeight,
      color: other.color ?? color,
      fontStyle: other.fontStyle ?? fontStyle,
      alignSelf: other.alignSelf ?? alignSelf,
      textAlign: other.textAlign ?? textAlign,
      height: other.height ?? height,
      width: other.width ?? width,
      minWidth: other.minWidth ?? minWidth,
      maxWidth: other.maxWidth ?? maxWidth,
      minHeight: other.minHeight ?? minHeight,
      maxHeight: other.maxHeight ?? maxHeight,
    );
  }

  // Overloading the + operator for combining styles
  ViewStyle? operator +(ViewStyle? other) {
    return _merge(other);
  }
}
