import 'package:flutter/material.dart';

class OutlineButtonWidget extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final Color color;
  final Color textcolor;
  final Function()? onPressed;
  const OutlineButtonWidget({super.key, required this.text, required this.width, required this.height, this.onPressed, required this.color,required this.textcolor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: color),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          )
        ),
        child: Text(text,style: Theme.of(context).textTheme.headlineSmall!.copyWith(color:textcolor ))),
    );
  }
}