import 'package:flutter/material.dart';
import 'package:flutter_rn_components/base/utils.dart';
import 'package:flutter_rn_components/base/view_style.dart';

class RNView extends StatelessWidget {
  List<Widget> children;
  ViewStyle? style;

  RNView({super.key, required this.children, this.style});

  get _basicContent => LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            width: style?.width,
            height: style?.height,
            padding: BaseCompUtils.getPadding(style),
            margin: BaseCompUtils.getMargin(style),
            decoration: BoxDecoration(
              color: style?.backgroundColor ?? Colors.transparent,
              border: BaseCompUtils.getBorder(style),
              borderRadius: style?.borderRadius != null
                  ? BorderRadius.circular(style!.borderRadius!)
                  : null,
              boxShadow: BaseCompUtils.getBoxShadow(style) != null
                  ? [BaseCompUtils.getBoxShadow(style)!]
                  : null,
            ),
            child: Flex(
              direction: style?.flexDirection ?? Axis.vertical,
              mainAxisAlignment:
                  style?.justifyContent ?? MainAxisAlignment.start,
              crossAxisAlignment:
                  style?.alignItems ?? CrossAxisAlignment.stretch,
              children: children,
            ),
          );
        },
      );

  Widget _renderContentAsFlex(Widget content) {
    if (style?.alignSelf != null && style?.flex != null) {
      return Align(
        alignment: style!.alignSelf!,
        child: Expanded(
          flex: style!.flex!,
          child: content,
        ),
      );
    }

    if (style?.alignSelf != null) {
      return Align(alignment: style!.alignSelf!, child: content);
    }

    if (style?.flex != null) {
      return Expanded(flex: style!.flex!, child: content);
    }

    return content;
  }

  Widget _renderWithContraints(Widget content) {
    if (style?.width != null && style?.height != null) {
      return content;
    } else if (style?.width != null &&
        (style?.minHeight != null || style?.maxHeight != null)) {
      return ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: style?.minHeight ?? 0,
          maxHeight: style?.maxHeight ?? double.infinity,
        ),
        child: content,
      );
    } else if (style?.height != null &&
        (style?.minWidth != null || style?.maxWidth != null)) {
      return ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: style?.minWidth ?? 0,
          maxWidth: style?.maxWidth ?? double.infinity,
        ),
        child: content,
      );
    } else if ((style?.minHeight != null || style?.maxHeight != null) &&
        (style?.minWidth != null || style?.maxWidth != null)) {
      return ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: style?.minWidth ?? 0,
          maxWidth: style?.maxWidth ?? double.infinity,
          minHeight: style?.minHeight ?? 0,
          maxHeight: style?.maxHeight ?? double.infinity,
        ),
        child: content,
      );
    }

    return content;
  }

  @override
  Widget build(BuildContext context) {
    return _renderWithContraints(_renderContentAsFlex(_basicContent));
  }
}
