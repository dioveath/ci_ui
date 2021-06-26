import 'package:flutter/material.dart';
import 'package:ci_ui/ci_ui.dart';

class ExampleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          CIText.headingOne("Charicha Institute Design System"),
          verticalSpacerLarge, 
          ...texts,
          verticalSpacerLarge,
          ...buttons,
          verticalSpacerLarge,
          ...textfields,
        ],
      ),
    ));
  }

  List<Widget> texts = [
    CIText.headlineStyle("CI Text Styles"),
    verticalSpacerMedium,
    CIText.headingOne("Heading 1 TextStyle"),
    verticalSpacerMedium,
    CIText.headingTwo("Heading 2 TextStyle"),
    verticalSpacerMedium,
    CIText.headingThree("Heading 3 TextStyle"),
    verticalSpacerMedium,
    CIText.headlineStyle("Headline TextStyle"),
    verticalSpacerMedium,
    CIText.subHeadingStyle("SubHeading TextStyle"),
    verticalSpacerMedium,
    CIText.captionStyle("Caption TextStyle"),
    verticalSpacerMedium,
    CIText.body("This is Body TextStyle")
  ];

  List<Widget> buttons = [
    CIText.headlineStyle("CI Button"),
    verticalSpacerLarge,
    CIText.subHeadingStyle("Normal Button"),
    verticalSpacerSmall, 
    CIButton(
        title: "Sign In", onTap: () => print("Normal Button Pressed!")),
      verticalSpacerMedium,
    CIText.subHeadingStyle("Disabled Button"),
    verticalSpacerSmall,       
    CIButton(
        title: "Sign In",
        disabled: true,
        onTap: () => print("Outline Button Pressed!")),
      verticalSpacerMedium,
    CIText.subHeadingStyle("Outline Button"),
    verticalSpacerSmall,             
    CIButton.outline(
      title: "Outline Button", onTap: () => print("Outline Button Pressed!")),
    verticalSpacerMedium,
    CIText.subHeadingStyle("Outline Leading Button"),
    verticalSpacerSmall,             
    CIButton.outline(
      title: "Leading Button",
      leading: Icon(Icons.my_location, color: kcPrimaryColor),
      onTap: () => print("Outline Button Pressed!")),    
  ];

  List<Widget> textfields = [
    CIText.headlineStyle("CI InputField"),
    verticalSpacerLarge,
    CIText.subHeadingStyle("Normal TextField"),
    verticalSpacerSmall,                 
    CIInputField(controller: TextEditingController()),    
    verticalSpacerMedium,
    CIText.subHeadingStyle("Leading TextField"),
    verticalSpacerSmall,                     
    CIInputField(controller: TextEditingController(), leading: Icon(Icons.vpn_key)),
    verticalSpacerMedium,
    CIText.subHeadingStyle("Trailing TextField"),
    verticalSpacerSmall,                         
    CIInputField(controller: TextEditingController(), trailing: Icon(Icons.clear, color: kcPrimaryColor)),
  ];
}
