import 'package:cheval/src/Views/Routes/routes_name.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/back_arrow_widget.dart';
import 'package:cheval/src/Views/widgets/custom_button.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InitialSubscribe extends StatefulWidget {
  const InitialSubscribe({super.key});

  @override
  State<InitialSubscribe> createState() => _InitialSubscribeState();
}

class _InitialSubscribeState extends State<InitialSubscribe> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
        decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage(Appimage.map),
          alignment: Alignment.bottomCenter,
        ),
        color: Appcolors.appColors.shade50,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
           padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 16),
          child: Column(
            children: [
                BackArrowWidget(
                text: 'Subscribe Now',
                onTap: () {
                  Get.back();
                },
              ),
              24.vspace,
                            Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height:  MediaQuery.of(context).size.height/ 2.6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16), color: Colors.black),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    16.vspace,
                    Text(
                      "Try 7 Days Trial",
                      style:
                          theme.textTheme.headlineSmall!.copyWith(fontSize: 40),
                    ),
                    8.vspace,
                    Text(
                      "Trial Pack",
                      style: theme.textTheme.titleSmall,
                    ),
                    8.vspace,
                    Text(
                      "Free ₹ 500 Wallet balance",
                      style: theme.textTheme.bodyLarge,
                      textAlign: TextAlign.center,
                    ),
                    8.vspace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "₹ 0 / ",
                          style: theme.textTheme.headlineSmall!
                              .copyWith(fontSize: 40),
                        ),
                        Text("1 week", style: theme.textTheme.headlineSmall),
                      ],
                    ),
                    26.vspace,
                    ButtonWidget(
                      text: "Pay now",
                      width: MediaQuery.of(context).size.width / 3,
                      height: 52,
                      color: theme.splashColor,
                      onPressed: () {
                        Get.toNamed(Appnames.navigator);
                      },
                      textcolor: Colors.black,
                      textsize: 18,
                    ),
                    16.vspace,
                  ],
                ),
              ),
              16.vspace,
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height:  MediaQuery.of(context).size.height/ 2.6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16), color: Colors.black),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    16.vspace,
                    Text(
                      "Premium",
                      style:
                          theme.textTheme.headlineSmall!.copyWith(fontSize: 40),
                    ),
                    8.vspace,
                    Text(
                      "Booking Company",
                      style: theme.textTheme.titleSmall,
                    ),
                    8.vspace,
                    Text(
                      "₹ 5000 min add to wallet.Every bid \n₹ 10 detected from wallet.",
                      style: theme.textTheme.bodyLarge,
                      textAlign: TextAlign.center,
                    ),
                    8.vspace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "₹ 5000 / ",
                          style: theme.textTheme.headlineSmall!
                              .copyWith(fontSize: 40),
                        ),
                        Text("1 year", style: theme.textTheme.headlineSmall),
                      ],
                    ),
                    26.vspace,
                    ButtonWidget(
                      text: "Pay now",
                      width: MediaQuery.of(context).size.width / 3,
                      height: 52,
                      color: theme.splashColor,
                      onPressed: () {
                       // Get.toNamed(Appnames.currentSubscribe);
                      },
                      textcolor: Colors.black,
                      textsize: 18,
                    ),
                    16.vspace,
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
