// import 'package:flutter/material.dart';
// import 'package:flutter_rn_components/base/utils.dart';
// import 'package:flutter_rn_components/base/view_style.dart';

// class RNText extends StatelessWidget {
//   String text;
//   ViewStyle? style;

//   RNText({super.key, this.style, required this.text});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: BaseCompUtils.getPadding(style),
//       margin: BaseCompUtils.getMargin(style),
//       decoration: BoxDecoration(
//         color: style?.backgroundColor ?? Colors.transparent,
//         border: BaseCompUtils.getBorder(style),
//         borderRadius: style?.borderRadius != null
//             ? BorderRadius.circular(style!.borderRadius!)
//             : null,
//         boxShadow: BaseCompUtils.getBoxShadow(style) != null
//             ? [BaseCompUtils.getBoxShadow(style)!]
//             : null,
//       ),
//       child: Text(
//         text,
//         textAlign: style?.textAlign,
//         style: TextStyle(
//           color: style?.color,
//           fontWeight: style?.fontWeight,
//           fontSize: style?.fontSize,
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_rn_components/components/rn_view.dart';
import 'package:flutter_rn_components/base/view_style.dart';

class RNText extends StatelessWidget {
  String text;
  ViewStyle? style;

  RNText({super.key, this.style, required this.text});

  @override
  Widget build(BuildContext context) {
    return RNView(
      style: style,
      children: [
        Text(
          text,
          textAlign: style?.textAlign,
          style: TextStyle(
            color: style?.color,
            fontWeight: style?.fontWeight,
            fontSize: style?.fontSize,
          ),
        ),
      ],
    );
  }
}
