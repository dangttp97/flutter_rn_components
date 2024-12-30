### Installation:

In your pubspec.yaml add this:

```yaml
flutter_rn_components:
  git:
    url: https://github.com/dangttp97/flutter_rn_components
    branch: main
```

### Usage:

I have exports the basic components like View, Text, SafeAreaView, Pressable and most important StyleSheet

They are named with RN prefix

For example you want to use View:

```dart
import "package:flutter_rn_components/components/rn_view.dart";
import "package:flutter_rn_components/base/style_sheet.dart";
import "package:flutter_rn_components/base/view_style.dart";

class SomeClass extends StatelessWidget {
  ViewStyle? style;

  SomeClass({super.key, this.style});

  @override
  Widget build(BuildContext context) {
    return RNView(style: _styles["container"] + style, children: [
        ...rest childen in here
    ]);
  }
}

get _styles => StyleSheet.create({
    "container": ViewStyle(
        justifyContent: MainAxisAlignment.center,
    ),
});
```

That's it, hopes library can help you find something familiar when switching from both world!
