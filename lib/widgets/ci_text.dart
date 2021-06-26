import 'package:ci_ui/shared/ci_colors.dart';
import 'package:ci_ui/shared/style.dart';
import 'package:flutter/cupertino.dart';

class CIText extends StatelessWidget {
  final String text;
  final TextStyle style;

  const CIText.headingOne(this.text) : style = heading1Style;
  const CIText.headingTwo(this.text) : style = heading2Style;
  const CIText.headingThree(this.text) : style = heading3Style;
  const CIText.headlineStyle(this.text) : style = headlineStyle;
  const CIText.subHeadingStyle(this.text) : style = subHeadingStyle;
  const CIText.captionStyle(this.text) : style = captionStyle;

  CIText.body(this.text, {Color color = kcPrimaryColor})
      : style = bodyStyle.copyWith(color: color);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }

}
