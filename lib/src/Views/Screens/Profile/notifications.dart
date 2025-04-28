import 'package:cheval/src/Views/Routes/routes_name.dart';
import 'package:cheval/src/Views/Screens/Home/navigator.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/communication_widget.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      color: Appcolors.appColors.shade50,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NavigatorScreen(index: 2)));
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
                      'Notifications',
                      style: Theme.of(context).textTheme.headlineSmall,
                    )
                  ],
                ),
              ),
              26.vspace,
              CommunicationsWidget(
                  color: const Color(0xff005D67),
                  textColor: Appcolors.appColors.shade100,
                  text: 'Date:',
                  text1: 'Sender Name:',
                  text2: 'First two lines of message sent',
                  widget: SizedBox(
                    height: 30,
                    width: 100,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                        onPressed: () {
                          Get.toNamed(Appnames.communicationView);
                        },
                        child: Text(
                          'View',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  color: theme.splashColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                        )),
                  )),
              16.vspace,
              CommunicationsWidget(
                  color: Appcolors.appColors.shade100,
                  textColor: const Color(0xff005D67),
                  text: 'Date:',
                  text1: 'Sender Name:',
                  text2: 'First two lines of message sent',
                  widget: SizedBox(
                    height: 30,
                    width: 100,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff005D67),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                        onPressed: () {
                          Get.toNamed(Appnames.communicationView);
                        },
                        child: Text(
                          'View',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  color: Appcolors.appColors.shade100,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                        )),
                  )),
              16.vspace,
              CommunicationsWidget(
                  color: theme.splashColor,
                  textColor: Appcolors.appColors.shade100,
                  text: 'Date:',
                  text1: 'Sender Name:',
                  text2: 'First two lines of message sent',
                  widget: SizedBox(
                    height: 30,
                    width: 100,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                        onPressed: () {
                          Get.toNamed(Appnames.communicationView);
                        },
                        child: Text(
                          'View',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  color: theme.splashColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                        )),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
