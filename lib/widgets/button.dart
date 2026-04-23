import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.textButton,
    required this.onPressed,
    this.widthButton = double.infinity,
    this.heightButton = 56,
    this.titleSize = 16,
    this.backgroundColor = const Color(0xFFFFA451),
    this.textColor = Colors.white
  });

  final String textButton;
  final VoidCallback? onPressed;
  final double widthButton;
  final double heightButton;
  final double titleSize;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthButton,
      height: heightButton,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shadowColor: Colors.transparent,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(10),
          ),
        ),
        child: Text(
          textButton,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w600,
            fontSize: titleSize,
          ),
        ),
      ),
    );
  }
}
