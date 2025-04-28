import 'package:cheval/src/Views/Routes/routes_name.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelpViewScreen extends StatefulWidget {
  const HelpViewScreen({super.key});

  @override
  State<HelpViewScreen> createState() => _HelpViewScreenState();
}

class _HelpViewScreenState extends State<HelpViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Appcolors.appColors.shade50,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 36.0, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Get.toNamed(Appnames.help);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      Appimage.down,
                      height: 30,
                      width: 20,
                    ),
                    Text(
                      'Help & Support',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
              ),
              16.vspace,
              Text(
                'John Doe',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
              16.vspace,
              Text(
                'Ticket No: 1765488',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Appcolors.appColors.shade100,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              16.vspace,
              Text(
                'Date : 15-Oct-2024',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              Text(
                'Category : ',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              Text(
                'Priority : Medium',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              16.vspace,
              Text(
                'Attachments : ',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Appcolors.appColors.shade100,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              8.vspace,
              Text(
                'Description: Lorem ipsum is a dummy text used for type setting instead of real text only for demonstration purpose. Lorem ipsum is a dummy text used for type setting instead of real text only for demonstration purpose',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              24.vspace,
              Text(
                'Support : ',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Appcolors.appColors.shade100,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              16.vspace,
              Text(
                'Date : 15-Oct-2024',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
              ),
               16.vspace,
              Text(
                'Attachments : ',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Appcolors.appColors.shade100,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              8.vspace,
              Text(
                'Description: Lorem ipsum is a dummy text used for type setting instead of real text only for demonstration purpose. Lorem ipsum is a dummy text used for type setting instead of real text only for demonstration purpose',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
