import 'package:ci_ui/shared/ci_colors.dart';
import 'package:ci_ui/shared/style.dart';
import 'package:flutter/material.dart';

class CIButton extends StatelessWidget {

  final String title;
  final bool disabled;
  final bool busy;
  final bool outline;

  final Widget? leading;

  final void Function()? onTap;

  const CIButton({Key? key, required this.title, this.onTap, this.leading, this.disabled = false, this.busy = false}) : this.outline = false;

  const CIButton.outline({
      required this.title,
      this.onTap,
      this.leading
  }) : disabled = false, busy = false, outline = true;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: !disabled ? onTap : (){},
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 350),
        width: double.infinity,
        height: 48,
        alignment: Alignment.center,
        decoration: !outline ? BoxDecoration(
          color: !disabled ? kcPrimaryColor : kcDisabledColor,
          borderRadius: BorderRadius.circular(8), 
        ) : BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: kcPrimaryColor, width: 1), 
        ),
        child: !busy
        ? Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if(leading != null) leading!,
            if(leading != null) SizedBox(width: 5),
            Text(
              title,
              style: heading3Style.copyWith(color: !outline ? Colors.white : kcPrimaryColor)
            )
          ], 
        )
        : CircularProgressIndicator(strokeWidth: 8, valueColor: AlwaysStoppedAnimation(Colors.white)), 
      ),
    );
  }
}
