import 'package:flutter/material.dart';

class ButtonWidget2 extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final Color color;
  final double borderRadius;
  final Function()? onPressed;
  const ButtonWidget2({super.key, required this.text, required this.width, required this.height, this.onPressed, required this.color, required this.borderRadius});

  @override
  Widget build(BuildContext context) {
      ThemeData theme = Theme.of(context);
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor:color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius)
          )
        ),
        child: Text(text,style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: theme.splashColor,fontSize: 15))),
    );
  }
}