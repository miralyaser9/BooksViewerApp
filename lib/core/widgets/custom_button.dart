import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key,required this.onPress,
   required this.child,this.style,this.height,
   this.backgroundColor,this.borderRadius}) : super(key: key);

   final void Function() onPress;
   final ButtonStyle? style;
   final Widget child;
   final double? height;
   final BorderRadius? borderRadius;
   final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextButton(
        onPressed: onPress,
        style: TextButton.styleFrom(backgroundColor: backgroundColor??Colors.white
            ,shape:RoundedRectangleBorder(borderRadius: borderRadius??BorderRadius.circular(12)) ),
        child:child,
      ),
    );
  }
}
