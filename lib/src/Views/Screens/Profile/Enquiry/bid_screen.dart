import 'package:cheval/src/Views/Routes/routes_name.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/custom_button.dart';
import 'package:cheval/src/Views/widgets/dialog_widget.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BidScreen extends StatefulWidget {
  const BidScreen({super.key});

  @override
  State<BidScreen> createState() => _BidScreenState();
}

class _BidScreenState extends State<BidScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: AssetImage(Appimage.map),
            alignment: Alignment.bottomCenter,
            fit: BoxFit.contain),
        color: Appcolors.appColors.shade50,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.toNamed(Appnames.enquiryView);
                      },
                      child: Image.asset(
                        Appimage.down,
                        height: 36,
                        width: 26,
                      ),
                    ),
                    8.hspace,
                    Text('Bid Id: 123456789',
                        style: Theme.of(context).textTheme.headlineSmall),
                  ],
                ),
                24.vspace,
                Text(
                  'Bid Id: 23456',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                Text(
                  'Date: 11-12-2024',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                Text(
                  'Time: 10:00 AM',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                Text(
                  'Bid Amount: INR 2,00,000',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                24.vspace,
                Text('Broker Details',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w700,
                        color: theme.splashColor,
                        fontSize: 18)),
                8.vspace,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      Appimage.broker,
                      height: 56,
                      width: 56,
                      fit: BoxFit.fill,
                    ),
                    8.hspace,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Broker Name: Lorem',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          'Bid Amount: INR 2,00,000',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          'Broker Rating:',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          'Broker Location: Pune, Maharashtra',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          'Contact No: +91 XXXXXXXXX',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          'Email : XXXXXXXXXXXXX',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
                24.vspace,
                Text('Vehicle Details',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w700,
                        color: theme.splashColor,
                        fontSize: 18)),
                8.vspace,
                Container(
                  padding: const EdgeInsets.all(16),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Appcolors.appColors.shade100,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Vehicle No: XXXXXXXXXX',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: theme.splashColor),
                      ),
                      Text(
                        'Insurance Status: Active',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: theme.splashColor),
                      ),
                      Text(
                        'PUC Status: Active',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: theme.splashColor),
                      ),
                      Text(
                        'Permit Status: Active',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: theme.splashColor),
                      ),
                      Text(
                        'Registration: Valid',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: theme.splashColor),
                      ),
                      Text(
                        'Vehicle Health Status',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: theme.splashColor),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 7,
                ),
                Center(
                  child: Text(
                    'You can only view the Broker & driver contact details once you accept the bid',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Appcolors.appColors.shade100),
                    textAlign: TextAlign.center,
                  ),
                ),
                24.vspace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          onPressed: () {
                            rejectbid();
                          },
                          child: Text(
                            'Reject Bid',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  fontSize: 18,
                                    color: const Color(0xffFF060A),
                                    fontWeight: FontWeight.w700),
                          )),
                    ),
                    ButtonWidget(
                      text: 'Accept Bid',
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: 50,
                      color: theme.splashColor,
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => MyDialogWidget(
                                  text: 'Accept Bid',
                                  text1:
                                      'Are you sure you want to accept this bid?',
                                  text2:
                                      ' Please note once you accept the bid and change your decision later it will  attract a penalty which will be  deducted from your security deposit.',
                                  buttontext: 'Cancel',
                                  canceltext: 'Accept Bid',
                                  onPressed: () {
                                    setState(() {
                                      Navigator.pop(context);
                                    });
                                  },
                                  cancelButton: () {
                                    Get.toNamed(Appnames.bidview);
                                  },
                                ));
                      },
                    )
                  ],
                ),
                24.vspace,
              ],
            ),
          ),
        ),
      ),
    );
  }

  rejectbid() {
    return showDialog(
        context: context,
        builder: (context) {
          return MyDialogWidget(
            text: 'Reject Bid',
            text1: 'Are you sure you want to reject this bid?',
            text2:
                'Please note the action can\'t be undone and this bid will be no longer available for you to accept it.',
            buttontext: 'Cancel',
            canceltext: 'Reject Bid',
            onPressed: () {},
            cancelButton: () {
              Navigator.pop(context);
            },
          );
        });
  }
}
