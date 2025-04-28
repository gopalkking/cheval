import 'package:cheval/src/Views/Routes/routes_name.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AcceptBidScreen extends StatefulWidget {
  const AcceptBidScreen({super.key});

  @override
  State<AcceptBidScreen> createState() => _AcceptBidScreenState();
}

class _AcceptBidScreenState extends State<AcceptBidScreen> {
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
                    Text('Enquiry #: 123456789',
                        style: Theme.of(context).textTheme.headlineSmall),
                  ],
                ),
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
                      Text('Consignor: Lorem Ipsum',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff2D2D2D))),
                      Text('Types of Goods:Test of Lorem Ipsum',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff2D2D2D))),
                      Text('Weight: 110 KG',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff2D2D2D))),
                      Text('Dimensions: 10X2X4',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff2D2D2D))),
                      Text('Pickup Address: Lorem Ipsum',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff2D2D2D))),
                      Text('Pickup City: Pune',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff2D2D2D))),
                      Text('Pickup State: Maharashtra',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff2D2D2D))),
                      Text('Pickup Date: 11-12-2024',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff2D2D2D))),
                      Text('Drop Address: Lorem Ipsum',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff2D2D2D))),
                      Text('Drop City: Pune',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff2D2D2D))),
                      Text('Drop State: Maharashtra',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff2D2D2D))),
                      Text('Drop Date: 25-12-2024',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff2D2D2D))),
                      Text('Status: Open',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff2D2D2D))),
                      Text('Additional Requirements:',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff2D2D2D))),
                    ],
                  ),
                ),
                8.vspace,
                // Align(
                //   alignment: Alignment.topRight,
                //   child: SizedBox(
                //     height: 36,
                //     width: 120,
                //     child: ElevatedButton(
                //         style: ElevatedButton.styleFrom(
                //             shape: RoundedRectangleBorder(
                //                 borderRadius: BorderRadius.circular(12)),
                //             backgroundColor: Appcolors.appColors.shade100),
                //         onPressed: () {
                //          // Get.toNamed(Appnames.customerdetails);
                //         },
                //         child: Text(
                //           'View Status',
                //           style:
                //               Theme.of(context).textTheme.bodyLarge!.copyWith(
                //                     color: theme.splashColor,
                //                     fontWeight: FontWeight.w600,
                //                   ),
                //         )),
                //   ),
                // ),
                // 8.vspace,
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
                16.vspace,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    bidButton(36, MediaQuery.of(context).size.width / 3.5, 'Call Broker',
                        Appcolors.appColors.shade100, theme.splashColor, () {}),
                    bidButton(36, MediaQuery.of(context).size.width / 3.5, 'Email Broker',
                        Appcolors.appColors.shade100, theme.splashColor, () {}),
                    bidButton(36, MediaQuery.of(context).size.width / 3.5, 'Chat', Appcolors.appColors.shade100,
                        theme.splashColor, () {}),
                  ],
                ),
                16.vspace,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Vehicle No: XXXXXXXXXX',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: theme.splashColor),
                          ),
                          Text(
                            'Insurance Status: Active',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: theme.splashColor),
                          ),
                          Text(
                            'PUC Status: Active',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: theme.splashColor),
                          ),
                          Text(
                            'Permit Status: Active',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: theme.splashColor),
                          ),
                          Text(
                            'Registration: Valid',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: theme.splashColor),
                          ),
                          Text(
                            'Vehicle Health Status',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: theme.splashColor),
                          ),
                        ],
                      ),
                      bidButton(40, 130, 'Documents', theme.splashColor,
                          Appcolors.appColors.shade100, () {}),
                    ],
                  ),
                ),
                8.vspace,
                Text('Driver Details',
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
                          'Driver Name: Lorem Ipsum',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          'Driving License: Active Driver',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          'Rating:',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          'Driver Location: Pune, Maharashtra',
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
                         Text(
                          'KYC Status: Verified',
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
                8.vspace,
                   Align(
                    alignment: Alignment.bottomRight,
                     child: bidButton(40, 130, 'View Challan', theme.splashColor,
                            Appcolors.appColors.shade100, () {}),
                   ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget bidButton(double height, double width, String text,
      Color backgroundColor, Color textColor, Function()? onPressed) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: textColor,
                  fontWeight: FontWeight.w700,
                ),
          )),
    );
  }
}
