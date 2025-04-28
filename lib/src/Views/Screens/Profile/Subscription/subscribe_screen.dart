import 'package:cheval/src/Views/Routes/routes_name.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/back_arrow_widget.dart';
import 'package:cheval/src/Views/widgets/custom_button.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubscribeScreen extends StatefulWidget {
  const SubscribeScreen({super.key});

  @override
  State<SubscribeScreen> createState() => _SubscribeScreenState();
}

class _SubscribeScreenState extends State<SubscribeScreen> {
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
      child: Padding(
  padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 16),
        child: Scaffold(
            backgroundColor: Colors.transparent,
          body: Column(
            children: [
              BackArrowWidget(
                text: 'Subscribe Now',
                onTap: () {
                  Get.back();
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height/5,),
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height: MediaQuery.of(context).size.height / 2,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.black),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    16.vspace,
                    Text(
                      "Premium",
                      style: theme.textTheme.headlineSmall!
                          .copyWith(fontSize: 40),
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
                        Text("1 year",
                            style: theme.textTheme.headlineSmall),
                      ],
                    ),
                    26.vspace,
                    ButtonWidget(
                      text: "Pay now",
                      width: MediaQuery.of(context).size.width / 3,
                      height: 52,
                      color: theme.splashColor,
                      onPressed: () {
                        Get.toNamed(Appnames.currentSubscribe);
                      },
                      textcolor: Colors.black,
                      textsize: 18,
                    ),
                    16.vspace,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
