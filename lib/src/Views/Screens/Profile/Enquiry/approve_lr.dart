import 'package:cheval/src/Views/Routes/routes_name.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/back_arrow_widget.dart';
import 'package:cheval/src/Views/widgets/custom_button.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApproveLR extends StatefulWidget {
  const ApproveLR({super.key});

  @override
  State<ApproveLR> createState() => _ApproveLRState();
}

class _ApproveLRState extends State<ApproveLR> {
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
            padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BackArrowWidget(
                  text: 'Generate LR',
                  onTap: () {
                    Get.back();
                  },
                ),
                16.vspace,
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(top: 8),
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 6,
                        color: theme.splashColor,
                      ),
                      color: Appcolors.appColors.shade100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(children: [
                        Image.asset(
                          Appimage.broker,
                          height: 60,
                          width: 86,
                          fit: BoxFit.fitWidth,
                        ),
                        8.vspace,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Booking Company Name',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Booking Company address',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      color: Colors.black.withValues(alpha:0.75),
                                      fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Website',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      color: Colors.black.withValues(alpha:0.75),
                                      fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Email',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      color: Colors.black.withValues(alpha:0.75),
                                      fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Phone',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      color: Colors.black.withValues(alpha:0.75),
                                      fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ]),
                      const Divider(
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Center(
                        child: Text(
                          'CONSIGNMENT NOTE',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                        ),
                      ),
                      Table(
                          border: TableBorder.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 2),
                          children: [
                            TableRow(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Consignor:',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      'Consignor Name',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Colors.black
                                                  .withValues(alpha:0.75),
                                              fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Address',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Colors.black
                                                  .withValues(alpha:0.75),
                                              fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Contact Person',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Colors.black
                                                  .withValues(alpha:0.75),
                                              fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Contact Number',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Colors.black
                                                  .withValues(alpha:0.75),
                                              fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'GSTIN',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Colors.black
                                                  .withValues(alpha:0.75),
                                              fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'LR #:',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Date:',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Colors.black
                                                  .withValues(alpha: 0.75),
                                              fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'From:',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Colors.black
                                                  .withValues(alpha: 0.75),
                                              fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'To:',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Colors.black
                                                  .withValues(alpha: 0.75),
                                              fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Booking Office:sdsksd',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Colors.black
                                                  .withValues(alpha: 0.75),
                                              fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                            TableRow(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Consignee:',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      'Consignee Name',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Colors.black
                                                  .withValues(alpha: 0.75),
                                              fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Address',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Colors.black
                                                  .withValues(alpha: 0.75),
                                              fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Contact Person',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Colors.black
                                                  .withValues(alpha: 0.75),
                                              fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Contact Number',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Colors.black
                                                  .withValues(alpha: 0.75),
                                              fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'GSTIN',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Colors.black
                                                  .withValues(alpha: 0.75),
                                              fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Vehicle No:',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Vehicle Type:',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Colors.black
                                                  .withValues(alpha: 0.75),
                                              fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Mode of Booking:',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Colors.black
                                                  .withValues(alpha: 0.75),
                                              fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Mode of Freight:',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Colors.black
                                                  .withValues(alpha: 0.75),
                                              fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Insurance:',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Colors.black
                                                  .withValues(alpha: 0.75),
                                              fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                            TableRow(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Buyer Other then Consignee:',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      'Consignee Name',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Colors.black
                                                  .withValues(alpha: 0.75),
                                              fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Address',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Colors.black
                                                  .withValues(alpha: 0.75),
                                              fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Contact Person',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Colors.black
                                                  .withValues(alpha: 0.75),
                                              fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Contact Number',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Colors.black
                                                  .withValues(alpha: 0.75),
                                              fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'GSTIN',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Colors.black
                                                  .withValues(alpha: 0.75),
                                              fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Invoice #:',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Volume:',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Colors.black
                                                  .withValues(alpha: 0.75),
                                              fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Invoice Value:',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Colors.black
                                                  .withValues(alpha: 0.75),
                                              fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Destination No:',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Colors.black
                                                  .withValues(alpha: 0.75),
                                              fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Owner Risk:',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Colors.black
                                                  .withValues(alpha: 0.75),
                                              fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                          ]),
                      Table(
                        border: const TableBorder(
                            bottom: BorderSide.none,
                            left: BorderSide(color: Colors.black,width: 2),
                            right: BorderSide(color: Colors.black,width: 2),
                            verticalInside: BorderSide(color: Colors.black,width: 2)),
                        columnWidths: const {
                          0: FractionColumnWidth(
                              0.1), // 20% of the available space
                          1: FractionColumnWidth(
                              0.2), // 30% of the available space
                          2: FractionColumnWidth(0.3),
                          3: FractionColumnWidth(0.2),
                          4: FractionColumnWidth(0.2),
                        },
                        children: [
                          TableRow(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2,
                                    color: Colors
                                        .black)), // Header row background color
                            children: const [
                              TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Padding(
                                      padding: EdgeInsets.all(6.0),
                                      child: Text('SR',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black)))),
                              TableCell(
                                  child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('No of Packages',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black)))),
                              TableCell(
                                  child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('Types Of Packing',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black)))),
                              TableCell(
                                  child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('Description',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black)))),
                              TableCell(
                                  child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('Weight',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black)))),
                            ],
                          ),
                          const TableRow(
                            children: [
                              TableCell(
                                  child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(' ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black)))),
                              TableCell(
                                  child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black)))),
                              TableCell(
                                  child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black)))),
                              TableCell(
                                  child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black)))),
                              TableCell(
                                  child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black)))),
                            ],
                          ),
                          const TableRow(
                            children: [
                              TableCell(
                                  child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(' ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black)))),
                              TableCell(
                                  child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black)))),
                              TableCell(
                                  child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black)))),
                              TableCell(
                                  child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black)))),
                              TableCell(
                                  child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black)))),
                            ],
                          ),
                          TableRow(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black,width: 2)),
                            children: const [
                              TableCell(
                                  child: Padding(
                                      padding: EdgeInsets.only(top: 4, left: 4),
                                      child: Text(' ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black)))),
                              TableCell(
                                  child: Padding(
                                      padding: EdgeInsets.only(top: 4, left: 4),
                                      child: Text('',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black)))),
                              TableCell(
                                  child: Padding(
                                      padding: EdgeInsets.only(top: 4, left: 4),
                                      child: Text('',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black)))),
                              TableCell(
                                  child: Padding(
                                      padding: EdgeInsets.only(top: 4, left: 4),
                                      child: Text('',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black)))),
                              TableCell(
                                  child: Padding(
                                      padding: EdgeInsets.only(top: 4, left: 4),
                                      child: Text('',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black)))),
                            ],
                          ),
                        ],
                      ),
                      Table(
                        // No global border for the table
                        border: null,
                        children: [
                          TableRow(children: [
                            TableCell(
                              child: Container(
                                width: 180,
                                decoration: const BoxDecoration(
                                  border: Border(
                                      left: BorderSide(
                                        width: 2,
                                        color: Colors.black,
                                      ),
                                      right: BorderSide(
                                          width: 2,
                                          color: Colors
                                              .black)), // Add border to this cell
                                ),
                                padding: const EdgeInsets.only(
                                  top: 8,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 6),
                                      child: Text('GSTIN:',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black)),
                                    ),
                                    const Divider(
                                      thickness: 2,
                                      color: Colors.black,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 6, bottom: 6),
                                      child: Text(
                                          'GSTIN Transactions Covered Under Reverse Charge SAC -996791 Subject to pune Jurisdiction only Goods booked & carried subject to conditions overleaf',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                color: Colors.black
                                                    .withValues(alpha: 0.75),
                                                fontWeight: FontWeight.w600,
                                              )),
                                    ),
                                   const Divider(
                                      thickness: 2,
                                      color: Colors.black,
                                    ),
                                        Padding(
                                      padding: const EdgeInsets.only(
                                        top: 36,
                                          left: 6, bottom: 6),
                                      child: Text(
                                          'Booking Company registered address',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                color: Colors.black
                                                    .withValues(alpha: 0.75),
                                                fontWeight: FontWeight.w600,
                                              )),
                                    ),
                                  const  Divider(
                                      thickness: 2,
                                      color: Colors.black,
                                    )
                                  ],
                                ),
                              ),
                            ),
                             TableCell(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height / 6.7,
                                  ),
                               const Padding(
                                  padding:  EdgeInsets.only(left: 8,),
                                  child:  Text('Consignor Sign',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                            textAlign: TextAlign.center,),
                                ),
                              const Divider(
                                  thickness: 2,
                                  color: Colors.black,
                                ),
                               const Padding(
                                  padding:  EdgeInsets.only(top: 36,left: 8,bottom: 14),
                                  child:  Text('Consignee Sign',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                            textAlign: TextAlign.center,),
                                ),
                                const Divider(
                                  thickness: 2,
                                  color: Colors.black,
                                ),
                                ],
                              ),
                            ),
                            TableCell(
                              child: Container(
                                width: 150,
                                decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide.none,
                                      left: BorderSide(
                                          width: 2,
                                          color: Colors
                                              .black),
                                              right:  BorderSide(
                                          width: 2,
                                          color: Colors
                                              .black)), // Add border to this cell
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8,top: 8),
                                      child: Text('For,Booking Company Name',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                color: Colors.black,
                                              )),
                                    ),
                                    SizedBox(
                                      height: MediaQuery.of(context).size.height / 7,
                                    ),
                                     Padding(
                                       padding: const EdgeInsets.only(top: 18,left: 8,bottom: 6,right: 8),
                                       child: Text('Booking Executive',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                color: Colors.black,
                                              )),
                                     ),
                                     const Divider(
                                  thickness: 2,
                                  color: Colors.black,
                                ),
                                  ],
                                ),
                              ),
                            ),
                          ]),
                        ],
                      ),
                    ],
                  ),
                ),
                24.vspace,
                Center(
                  child: ButtonWidget(text: 'Approve LR', width: MediaQuery.of(context).size.width / 2.3, 
                  height: 40, color: theme.splashColor,onPressed: (){
                    Get.toNamed(Appnames.approveInvoice);
                  },),
                ),
                16.vspace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(Appimage.share,height: 46,width: 46,),
                    Text('Share',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.w700
                    )),
                    24.hspace,
                    Image.asset(Appimage.cloud,height: 46,width: 46,),
                    Text('Upload',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.w700,
                    )),
                    24.hspace,
                    Image.asset(Appimage.printer,height: 46,width: 46,),
                    Text('Print',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.w700,
                    ),)
                  ],
                ),
                16.vspace,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
