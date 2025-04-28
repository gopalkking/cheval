import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:flutter/material.dart';

class MyDialogWidget extends StatelessWidget {
  final String text;
  final String text1;
  final String? text2;
  final String buttontext;
  final String canceltext;
  final Function()? onPressed;
  final Function()? cancelButton;
  const MyDialogWidget(
      {super.key,
      required this.text,
      required this.text1,
      this.text2,
      required this.buttontext,
      required this.canceltext,
      this.onPressed,
      this.cancelButton});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      backgroundColor: Appcolors.appColors.shade100,
      contentPadding: const EdgeInsets.all(16),
      title: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 16, bottom: 50, left: 16, right: 16),
            decoration: BoxDecoration(
              color: Appcolors.appColors.shade100,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Center(
                  child: Text(text,
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: const Color(0xffFF060A),
                          fontWeight: FontWeight.w700,
                          fontSize: 22)),
                ),
                16.vspace,
                Text(
                  text1,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: const Color(0xff313131),
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                Text(
                  text2.toString(),
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: const Color(0xff313131),
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                36.vspace,
              ],
            ),
          ),
          Positioned(
            // top: 280,
              bottom: 20,
              left: 0,
              child: SizedBox(
                height: 40,
                width: 130,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      backgroundColor: const Color(0xffFF060A),
                    ),
                    onPressed: onPressed,
                    child: Text(
                      buttontext,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Appcolors.appColors.shade100,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    )),
              )),
          Positioned(
            bottom: 20,
              right: 0,
              child: SizedBox(
                 height: 40,
                width: 130,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      backgroundColor: theme.splashColor,
                    ),
                    onPressed: cancelButton,
                    child: Text(
                      canceltext,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Appcolors.appColors.shade100,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    )),
              ))
        ],
      ),
    );
  }
}
