import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:flutter/material.dart';

class ShimpentWidget extends StatelessWidget {
  final String text;
  final String text1;
  final Widget widget; 
  final Widget image;
  const ShimpentWidget({super.key, required this.text, required this.text1, required this.widget, required this.image});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      width: MediaQuery.of(context).size.width / 3.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
         color: theme.hintColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Padding(
            padding: const EdgeInsets.only(top: 4, left: 8, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                image,
                4.hspace,
                Text(
                  text,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.white.withValues(alpha:0.75),
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          8.vspace,
          Text(
            text1,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Colors.white),
                textAlign: TextAlign.center,
          ),
          4.vspace,
          widget,
        ],
      ),
    );
  }
}