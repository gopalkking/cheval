import 'package:cheval/src/Views/Screens/Home/home_screen.dart';
import 'package:cheval/src/Views/Screens/New-Enquiry/new_enquiry.dart';
import 'package:cheval/src/Views/Screens/Profile/profile_screen.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NavigatorScreen extends StatefulWidget {
  int index;
  NavigatorScreen({super.key, required this.index});

  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      color: Appcolors.appColors.shade50,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                child: widget.index == 0
                    ? const HomeScreen()
                    : widget.index == 1
                        ? const NewEnquiryScreen()
                        : widget.index == 2
                            ? const ProfileScreen()
                            : const HomeScreen()),
            8.vspace,
            Container(
              color: theme.splashColor,
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          widget.index = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            Appimage.home,
                            color:
                                widget.index == 0 ? Colors.black : Colors.white,
                            height: 45,
                            width: 45,
                          ),
                          Text(
                            'Home',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  color: widget.index == 0
                                      ? Colors.black
                                      : Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700
                                ),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          widget.index = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            Appimage.enquiry,
                            color:
                                widget.index == 1 ? Colors.black : null,
                            height: 45,
                            width: 45,
                          ),
                          Text(
                            'Enquiry',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  color: widget.index == 1
                                      ? Colors.black
                                      : Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700
                                ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          widget.index = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            Appimage.user,
                            color:
                                widget.index == 2 ? Colors.black : Colors.white,
                            height: 45,
                            width: 45,
                          ),
                          Text(
                            'Profile',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  color: widget.index == 2
                                      ? Colors.black
                                      : Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700
                                ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
