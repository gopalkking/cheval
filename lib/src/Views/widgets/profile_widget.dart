import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final Widget image;
  final String text;
  final Widget image1;
  final Color color;
  const ProfileWidget({super.key, required this.image, required this.text, required this.image1, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color:color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          image,
          12.hspace,
          Text(text,style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: Appcolors.appColors.shade100,
            fontWeight: FontWeight.w400,
            fontSize: 16
          ),),
          const Spacer(),
          image1,
        ],
      ),
    );
  }
}