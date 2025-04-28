import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:flutter/material.dart';

class HelpWidget extends StatelessWidget {
  final String text;
  final String text1;
  final String text2;
  final String txt3;
  final Widget widget;
  final Widget button;
  const HelpWidget(
      {super.key,
      required this.text,
      required this.text1,
      required this.text2,
      required this.txt3,
      required this.button,
      required this.widget});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.white),
            ),
            Text(
              text1,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.white),
            ),
            Text(
              text2,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.white),
            ),
            Row(
              children: [
                Text(
                  txt3,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white),
                ),
                4.hspace,
                widget,
              ],
            ),
          ],
        ),
        button,
      ],
    );
  }
}
