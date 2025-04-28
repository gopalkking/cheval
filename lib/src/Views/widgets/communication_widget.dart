import 'package:flutter/material.dart';

class CommunicationsWidget extends StatelessWidget {
  final String text;
  final String text1;
  final String text2;
  final Color color;
  final Color textColor;
  final Widget widget;
  const CommunicationsWidget({super.key, required this.text, required this.text1, required this.text2, required this.color, required this.textColor, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color:color,
        border: Border.all(
          width: 1,
          color: Colors.white
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(text,style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: textColor,
              ),),
               Text(text1,style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: textColor,
              ),),
               Text(text2,style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: textColor,
              ),),
            ],
          ),
          widget,
      ],),
    );
  }
}