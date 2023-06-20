import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.backgroundColor =Colors.white,
    this.borderRadius,
    this.textStyle,
    required this.text,
    this.onPressed,

  }) : super(key: key);

  final Color backgroundColor;
  final BorderRadius? borderRadius;
  final String  text;
  final TextStyle?  textStyle;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 48,
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(16),
            )
          ),
          child: Center(
            child: Text(
              text,
              style: textStyle,
            ),
          ),
        ),
      ),
    );
  }
}
