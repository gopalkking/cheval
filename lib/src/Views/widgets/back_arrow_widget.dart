import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:flutter/material.dart';

class BackArrowWidget extends StatelessWidget {
  final String text;
  final Function()? onTap;
  const BackArrowWidget({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return  Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: onTap,
                      child: Image.asset(
                        Appimage.down,
                        height: 36,
                        width: 26,
                      ),
                    ),
                    8.hspace,
                    Text(text,
                        style: Theme.of(context).textTheme.headlineSmall),
                  ],
                );
  }
}