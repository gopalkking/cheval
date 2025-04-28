import 'package:cheval/src/Views/Routes/routes_name.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnquiryViewScreen extends StatefulWidget {
  const EnquiryViewScreen({super.key});

  @override
  State<EnquiryViewScreen> createState() => _EnquiryViewScreenState();
}

class _EnquiryViewScreenState extends State<EnquiryViewScreen> {
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
                        Get.toNamed(Appnames.enquiryManagement);
                      },
                      child: Image.asset(
                        Appimage.down,
                        height: 36,
                        width: 36,
                      ),
                    ),
                    8.hspace,
                    Text('Enquiry #: 123456789',
                        style: Theme.of(context).textTheme.headlineSmall),
                  ],
                ),
                16.vspace,
                Container(
                  padding:const EdgeInsets.all(16),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Consignor: Lorem Ipsum',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color:theme.hintColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),),
                      Text('Types of Goods:Test of Lorem Ipsum',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color:theme.hintColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),),
                      Text('Weight: 110 KG',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color:theme.hintColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),),
                      Text('Dimensions: 10X2X4',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color:theme.hintColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),),
                      Text('Pickup Address: Lorem Ipsum',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color:theme.hintColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),),
                      Text('Pickup City: Pune',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color:theme.hintColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),),
                      Text('Pickup State: Maharashtra',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color:theme.hintColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),),
                      Text('Pickup Date: 11-12-2024',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color:theme.hintColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),),
                      Text('Drop Address: Lorem Ipsum',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color:theme.hintColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),),
                      Text('Drop City: Pune',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color:theme.hintColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),),
                      Text('Drop State: Maharashtra',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color:theme.hintColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),),
                      Text('Drop Date: 25-12-2024',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color:theme.hintColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),),
                      Text('Status: Open',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color:theme.hintColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),),
                      Text('Additional Requirements:',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color:theme.hintColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),)
                    ],
                  ),
                ),
                16.vspace,
                 Text('Bids Received',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.w700,
                 )),
                 4.vspace,
                 bidContainer(
                  theme.splashColor, 
                  Appcolors.appColors.shade100,
                  'Bid Id: 23456','Time: 10:00 AM', 'Date: 11-12-2024', 'Broker Rating:', 
                  'Broker Name: Lorem Ipsum', 'Bid Amount: INR 2,00,000', 'Broker Location: Pune, Maharashtra', 
                  SizedBox(
                          height: 30,
                          width: 100,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8))),
                              onPressed: () {
                                Get.toNamed(Appnames.bid);
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
                        ),),
                        8.vspace,
                 bidContainer(
                  Appcolors.appColors.shade100, 
                  theme.hintColor,
                  'Bid Id: 23456','Time: 10:00 AM', 'Date: 11-12-2024', 'Broker Rating:', 
                  'Broker Name: Lorem Ipsum', 'Bid Amount: INR 2,00,000', 'Broker Location: Pune, Maharashtra', 
                  SizedBox(
                          height: 30,
                          width: 100,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: theme.hintColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8))),
                              onPressed: () {
                                Get.toNamed(Appnames.bid);
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
                        ),),
                        8.vspace,
                 bidContainer(
                  theme.hintColor, 
                  Appcolors.appColors.shade100,
                  'Bid Id: 23456','Time: 10:00 AM', 'Date: 11-12-2024', 'Broker Rating:', 
                  'Broker Name: Lorem Ipsum', 'Bid Amount: INR 2,00,000', 'Broker Location: Pune, Maharashtra', 
                  SizedBox(
                          height: 30,
                          width: 100,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8))),
                              onPressed: () {
                                Get.toNamed(Appnames.bid);
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
                        ),),


              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget bidContainer(
      Color color,
      Color textColor,
      String bidid,
      String time,
      String date,
      String rating,
      String brokername,
      String bidamount,
      String brokerlocation,
      Widget buttonwidget) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(
          color: Appcolors.appColors.shade100,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(4),
        color: color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                bidid,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: textColor,
                    ),
              ),
              Text(
                date,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: textColor,
                    ),
              ),
              Text(
                time,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: textColor,
                    ),
              ),
              Text(
                rating,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: textColor,
                    ),
              ),
              Text(
                brokername,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: textColor,
                    ),
              ),
              Text(
                bidamount,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: textColor,
                    ),
              ),
              Text(
                brokerlocation,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: textColor,
                    ),
              ),
            ],
          ),
          buttonwidget
        ],
      ),
    );
  }
}
