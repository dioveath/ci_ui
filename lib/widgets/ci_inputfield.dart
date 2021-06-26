import 'package:ci_ui/ci_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CIInputField extends StatelessWidget {
  final TextEditingController controller;
  final String placeHolder;
  final Widget? leading;
  final Widget? trailing;
  final bool password;
  final void Function()? trailingTapped;

  CIInputField(
      {Key? key,
      required this.controller,
      this.placeHolder = '',
      this.leading,
      this.trailing,
      this.password = false,
      this.trailingTapped})
  : super(key: key);

  final circularBorder = OutlineInputBorder(borderRadius: BorderRadius.circular(8));

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: TextStyle(height: 1),
      obscureText: password,
      decoration: InputDecoration(
        hintText: placeHolder,
        contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        filled: true,
        fillColor: Colors.white,
        prefixIcon: leading,
        suffixIcon: trailing != null ? GestureDetector(
          onTap: trailingTapped,
          child: trailing, 
        ) : null,
        border: circularBorder.copyWith(
          borderSide: BorderSide(color: kcDarkFaintedColor), 
        ),
        errorBorder: circularBorder.copyWith(
          borderSide: BorderSide(color: Colors.red), 
        ),
        focusedBorder: circularBorder.copyWith(
          borderSide: BorderSide(color: kcPrimaryColor), 
        ),
        enabledBorder: circularBorder.copyWith(
          borderSide: BorderSide(color: kcDarkFaintedColor), 
        ),
      ), 
    );
  }
}
