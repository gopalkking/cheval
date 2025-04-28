import 'package:cheval/src/Views/Screens/Home/navigator.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:flutter/material.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
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
                      'Reports & Analytics',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
              ),
              36.vspace,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  report(
                    Image.asset(Appimage.analytics, height: 26, width: 26),
                    'Enquiry Reports',
                    SizedBox(
                      height: 35,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0))),
                          onPressed: () {},
                          child: Text(
                            'View',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: theme.hintColor,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14),
                          )),
                    ),
                  ),
                   report(
                    Image.asset(Appimage.analytics, height: 26, width: 26),
                    'Enquiry Reports',
                    SizedBox(
                      height: 35,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0))),
                          onPressed: () {},
                          child: Text(
                            'View',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: theme.hintColor,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14),
                          )),
                    ),
                  )
                ],
              ),
              16.vspace,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  report(
                    Image.asset(Appimage.delivery, height: 26, width: 26),
                    'Shipment Reports',
                    SizedBox(
                      height: 35,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0))),
                          onPressed: () {},
                          child: Text(
                            'View',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: theme.hintColor,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14),
                          )),
                    ),
                  ),
                   report(
                    Image.asset(Appimage.analytics, height: 26, width: 26),
                    'Customer Reports',
                    SizedBox(
                      height: 35,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0))),
                          onPressed: () {},
                          child: Text(
                            'View',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: theme.hintColor,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14),
                          )),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  report(Widget image, String text, Widget widget) {
    ThemeData theme = Theme.of(context);
    return Container(
      width: MediaQuery.of(context).size.width / 2.3,
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                image,
                4.hspace,
                Text(
                  text,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Colors.white.withValues(alpha: 0.75),
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        56.vspace,
          widget,
        ],
      ),
    );
  }
}
