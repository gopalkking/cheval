import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final Color color;
  final Color? textcolor;
  final double? textsize;
  final Function()? onPressed;
  const ButtonWidget({super.key, required this.text, required this.width, required this.height, this.onPressed, required this.color, this.textcolor, this.textsize});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor:color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
          )
        ),
        child: Text(text,style: Theme.of(context).textTheme.titleSmall!.copyWith(
          fontSize: textsize??18,
          fontWeight: FontWeight.w700,
          color: textcolor
        ))),
    );
  }
}