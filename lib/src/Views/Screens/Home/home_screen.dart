import 'package:cheval/src/Views/Routes/routes_name.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/recent_bid_widget.dart';
import 'package:cheval/src/Views/widgets/shipment_widget.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> shipmentList = [
    'Active \nShipment',
    'Upcoming \nShipment',
    'Completed \nShipment',
  ];
  List<String> enquiryList = [
    'Open \nEnquiries',
    'In Progress \nEnquiries',
    'Completed \nEnquiries'
  ];
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
        decoration:  BoxDecoration(
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
            padding: const EdgeInsets.symmetric(vertical: 38, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Hello', style: Theme.of(context).textTheme.headlineSmall),
                Text('Company Name',
                    style: Theme.of(context).textTheme.headlineSmall),
                24.vspace,
                Text('Shipment Status',
                    style: Theme.of(context).textTheme.bodyLarge),
                16.vspace,
                SizedBox(
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: shipmentList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: ShimpentWidget(
                            text: shipmentList[index],
                            text1: '00',
                            widget: SizedBox(
                              height: 35,
                              width: MediaQuery.of(context).size.width,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(0))),
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
                            image: Image.asset(
                              Appimage.delivery,
                              height: 18,
                              width: 18,
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      }),
                ),
                16.vspace,
                Text('Enquiry Status',
                    style: Theme.of(context).textTheme.bodyLarge),
                8.vspace,
                SizedBox(
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: enquiryList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: ShimpentWidget(
                            text: enquiryList[index],
                            text1: '00',
                            widget: SizedBox(
                              height: 35,
                              width: MediaQuery.of(context).size.width,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(0))),
                                  onPressed: () {
                                     Get.toNamed(Appnames.enquiryView);
                                  },
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
                            image: Image.asset(
                              Appimage.information,
                              height: 18,
                              width: 18,
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      }),
                ),
                16.vspace,
                Text('Recent Bids',
                    style: Theme.of(context).textTheme.bodyLarge),
                4.vspace,
                ListView.builder(
                    padding: const EdgeInsets.all(0),
                    itemCount: 2,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: RecentBidsWidget(
                          enquiry: 'Enquiry #: 1234567890',
                          date: 'Date: 25-Dec-2024',
                          from: 'From Location: Pune',
                          to: 'To Location: Mumbai',
                          brokerName: 'Broker Name:',
                          brokerRating: 'Broker Rating:',
                          widget: SizedBox(
                            height: 35,
                            width: 120,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: theme.splashColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4))),
                                onPressed: () {
                                  Get.toNamed(Appnames.enquiryView);
                                },
                                child: Text(
                                  'View',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(
                                          color: Appcolors.appColors.shade100,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14),
                                )),
                          ),
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
