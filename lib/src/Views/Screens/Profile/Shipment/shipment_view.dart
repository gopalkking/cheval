import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/back_arrow_widget.dart';
import 'package:cheval/src/Views/widgets/custom_outline_button.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class ShipmentView extends StatefulWidget {
  const ShipmentView({super.key});

  @override
  State<ShipmentView> createState() => _ShipmentViewState();
}

class _ShipmentViewState extends State<ShipmentView> {
  @override
  Widget build(BuildContext context) {
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
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BackArrowWidget(
                  text: 'Order ID #33489439',
                  onTap: () {
                    Get.back();
                  },
                ),
                24.vspace,
                Text('Good Details & Customer Info',
                    style: Theme.of(context).textTheme.titleSmall),
                16.vspace,
                shipmentInfoContainer(
                  {
                    'Consignor: ': 'Lorem Ipsum',
                    'Types of Goods: ': 'Test of Lorem Ipsum',
                    'Weight: ': '110 KG',
                    'Dimensions: ': '10X2X4',
                    'Pickup Address: ': 'Lorem Ipsum',
                    'Pickup City: ': 'Pune',
                    'Pickup State: ': 'Maharashtra',
                    'Pickup Date: ': '11-12-2024',
                    'Drop City: ': 'Pune',
                    'Drop State: ': 'Maharashtra',
                    'Drop Date: ': '25-12-2024',
                    'Status: ': 'Open',
                    'Additional Requirements: ': ' ',
                  },
                  true,
                ),
                16.vspace,
                Text('Broker Details',
                    style: Theme.of(context).textTheme.titleSmall),
                16.vspace,
                shipmentInfoContainer(
                  {
                    'Broker Name: ': 'Gopala Krishnan S',
                    'Bid Amount: ': 'INR 2,00,000',
                    'Broker Rating: ': '4.5',
                    'Broker Location: ': 'Pune, Maharashtra',
                    'Contact No: ': '+91 9123456789',
                    'Email: ': 'gopal392002@gmail.com',
                    'Vechicle No: ': 'MH-12-CA-34520',
                  },
                  true,
                ),
                16.vspace,
                Text('Vechicle Details',
                    style: Theme.of(context).textTheme.titleSmall),
                16.vspace,
                shipmentInfoContainer(
                  {
                    'Vechicle No: ': 'MH-12-CA-34520',
                    'Insurance Status: ': 'Active',
                    'PUC Status: ': 'Active',
                    'Permit Status: ': 'Pune, Maharashtra',
                    'Registration: ': 'Valid',
                    'Vechicle Health Status: ': 'Active',
                  },
                  false,
                ),
                16.vspace,
                Text('Driver Details',
                    style: Theme.of(context).textTheme.titleSmall),
                16.vspace,
                shipmentInfoContainer(
                  {
                    'Driver Name: ': 'Gopala Krishnan S',
                    'Driver License: ': 'Active',
                    'Driver Rating: ': '3.5',
                    'Driver Location: ': 'Pune, Maharashtra',
                    'Contact No: ': '+91 9123456789',
                    'Email: ': 'gopal392002@gmail.com',
                    'KYC Status: ': 'Verified',
                  },
                  true,
                ),
                16.vspace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlineButtonWidget(
                      text: 'LR',
                      textcolor: Theme.of(context).splashColor,
                      width: MediaQuery.of(context).size.width / 4.1,
                      height: 46,
                      color: Theme.of(context).splashColor,
                      onPressed: () {
                       // Get.toNamed(Appnames.shipmentview);
                      },
                    ),
                    OutlineButtonWidget(
                      text: 'Invoice',
                      textcolor: Theme.of(context).splashColor,
                      width: MediaQuery.of(context).size.width / 3.5,
                      height: 46,
                      color: Theme.of(context).splashColor,
                      onPressed: () {
                      //  Get.toNamed(Appnames.shipmentview);
                      },
                    ),
                    OutlineButtonWidget(
                      text: 'Challan',
                      textcolor: Theme.of(context).splashColor,
                      width: MediaQuery.of(context).size.width / 3.5,
                      height: 46,
                      color: Theme.of(context).splashColor,
                      onPressed: () {
                       // Get.toNamed(Appnames.shipmentview);
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget shipmentInfoContainer(Map<String, String> data, bool isDriverInfo) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).splashColor),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: data.entries.map((entry) {
          if (entry.key == 'Driver Rating: ' ||
              entry.key == 'Broker Rating: ' && isDriverInfo) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(entry.key,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Colors.grey)),
                RatingBarIndicator(
                  rating: double.parse(entry.value),
                  itemSize: 20,
                  itemBuilder: (context, index) =>
                      Icon(Icons.star, color: Theme.of(context).splashColor),
                  unratedColor: Colors.white,
                ),
              ],
            );
          }
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(entry.key,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.grey)),
              Text(entry.value,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white)),
            ],
          );
        }).toList(),
      ),
    );
  }
}
