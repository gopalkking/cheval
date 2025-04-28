import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/back_arrow_widget.dart';
import 'package:cheval/src/Views/widgets/custom_button_2.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:cheval/src/Views/widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApproveInvoice extends StatefulWidget {
  const ApproveInvoice({super.key});

  @override
  State<ApproveInvoice> createState() => _ApproveInvoiceState();
}

class _ApproveInvoiceState extends State<ApproveInvoice> {
  TextEditingController weight = TextEditingController();
  TextEditingController dimensions = TextEditingController();
  TextEditingController pickaddress = TextEditingController();
  TextEditingController pickcity = TextEditingController();
  TextEditingController pickstate = TextEditingController();
  TextEditingController pickDate = TextEditingController();
  TextEditingController dropaddress = TextEditingController();
  TextEditingController dropcity = TextEditingController();
  TextEditingController dropstate = TextEditingController();
  TextEditingController dropdate = TextEditingController();
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
                BackArrowWidget(
                    text: 'Enquiry #: 123456789',
                    onTap: () {
                      Get.back();
                    }),
                16.vspace,
                Container(
                  padding: const EdgeInsets.all(16),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white),
                  child: Text(
                    'Consignor: Godrej India Pvt Ltd Types of Goods: Test of Lorem',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: const Color(0xff353535),
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                ),
                16.vspace,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Weight',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: Appcolors.appColors.shade100),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 2.3,
                            child: Textformfieldwidget(
                                textEditingController: weight)),
                                8.vspace,
                        Text(
                          'Pickup Address',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: Appcolors.appColors.shade100),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 2.3,
                            child: Textformfieldwidget(
                                textEditingController: pickaddress)),
                          8.vspace,
                        Text(
                            'Pickup State',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Appcolors.appColors.shade100),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 2.3,
                              child: Textformfieldwidget(
                                  textEditingController: pickstate)),
                        8.vspace,
                        Text(
                            'Drop Address',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Appcolors.appColors.shade100),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 2.3,
                              child: Textformfieldwidget(
                                  textEditingController: dropaddress)),
                        8.vspace,
                        Text(
                            'Drop State',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Appcolors.appColors.shade100),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 2.3,
                              child: Textformfieldwidget(
                                  textEditingController: dropstate)),
                      ],
                    ),
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Dimensions',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: Appcolors.appColors.shade100),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 2.3,
                            child: Textformfieldwidget(
                                textEditingController: dimensions)),
                                8.vspace,
                        Text(
                          'Pickup City',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: Appcolors.appColors.shade100),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 2.3,
                            child: Textformfieldwidget(
                                textEditingController: pickcity)),
                          8.vspace,
                        Text(
                            'Pickup Date',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Appcolors.appColors.shade100),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 2.3,
                              child: Textformfieldwidget(
                                  textEditingController: pickDate)),
                        8.vspace,
                        Text(
                            'Drop City',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Appcolors.appColors.shade100),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 2.3,
                              child: Textformfieldwidget(
                                  textEditingController: dropcity)),
                        8.vspace,
                        Text(
                            'Drop Date',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Appcolors.appColors.shade100),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 2.3,
                              child: Textformfieldwidget(
                                  textEditingController: dropdate)),
                      ],
                    ),
                  ],
                ),
                16.vspace,
                ButtonWidget2(text: 'Status: Open', 
                width: 150, height: 36, color: Appcolors.appColors.shade100, borderRadius: 16,onPressed: (){

                },),
                16.vspace,
                Text('Additional Requirements:',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Appcolors.appColors.shade100,
                  fontWeight: FontWeight.w400,
                ),),
                8.vspace,
                Container(
                  padding: const EdgeInsets.all(8),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Appcolors.appColors.shade100,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Broker Name: Lorem Ipsum',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: theme.splashColor,
                        fontWeight: FontWeight.w400
                      ),),
                      Text('Bid Amount: INR 2,00,000',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: theme.splashColor,
                        fontWeight: FontWeight.w400
                      ),),
                      Text('Broker Rating:',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: theme.splashColor,
                        fontWeight: FontWeight.w400
                      ),),
                      Text('Broker Location:',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: theme.splashColor,
                        fontWeight: FontWeight.w400
                      ),),
                      Text('Pune, Maharashtra',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: theme.splashColor,
                        fontWeight: FontWeight.w400
                      ),),
                      Text('Contact No: +91 91234567890',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: theme.splashColor,
                        fontWeight: FontWeight.w400
                      ),),
                      Text('Email: test@gmail.com',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: theme.splashColor,
                        fontWeight: FontWeight.w400
                      ),),
                      Text('Vehicle No: MH-12-CA-345',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: theme.splashColor,
                        fontWeight: FontWeight.w400
                      ),),
                    ],
                  ),
                ),
                8.vspace,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding:const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Appcolors.appColors.shade100
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Vehicle No:',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: const Color(0xff262626),
                        fontWeight: FontWeight.w400
                      ),),
                      Text('MH-12-CA-34520:',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: const Color(0xff262626),
                        fontWeight: FontWeight.w400
                      ),),
                      Text('Insurance Status: Active: ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                       color: const Color(0xff262626),
                        fontWeight: FontWeight.w400
                      ),),
                      Text('PUC Status: Active',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                         color: const Color(0xff262626),
                        fontWeight: FontWeight.w400
                      ),),
                      Text('Permit Status: Active',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: const Color(0xff262626),
                        fontWeight: FontWeight.w400
                      ),),
                      Text('Registration: Valid',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: const Color(0xff262626),
                        fontWeight: FontWeight.w400
                      ),),
                      Text('Vehicle Health Status:',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: const Color(0xff262626),
                        fontWeight: FontWeight.w400
                      ),),
                        ],
                      ),
                    ),
                     Container(
                      padding:const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Appcolors.appColors.shade100
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        Text('Driver Name: Lorem Ipsum',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: const Color(0xff262626),
                        fontWeight: FontWeight.w400
                      ),),
                      Text('Driving License: Active',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: const Color(0xff262626),
                        fontWeight: FontWeight.w400
                      ),),
                      Text('Driver Rating:',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                       color: const Color(0xff262626),
                        fontWeight: FontWeight.w400
                      ),),
                      Text('Driver Location: Pune, \nMaharashtra',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                         color: const Color(0xff262626),
                        fontWeight: FontWeight.w400
                      ),),
                      Text('Contact No:\n +91 9123456789',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: const Color(0xff262626),
                        fontWeight: FontWeight.w400
                      ),),
                      Text('Email: test@gmail.com',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: const Color(0xff262626),
                        fontWeight: FontWeight.w400
                      ),),
                      Text('KYC Status: Verified',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: const Color(0xff262626),
                        fontWeight: FontWeight.w400
                      ),),
                        ],
                      ),
                    ),
                  ],
                ),
                16.vspace,
                Text('Upload Documents',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: theme.splashColor,
                  fontWeight: FontWeight.w700,
                ),),
                16.vspace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonWidget2(text: 'LR', width: MediaQuery.of(context).size.width / 2.5, height: 36, color: Appcolors.appColors.shade100, 
                    borderRadius: 16,onPressed: (){},),
                     ButtonWidget2(text: 'Invoices', width:  MediaQuery.of(context).size.width / 2.5, height: 36, color: Appcolors.appColors.shade100, 
                    borderRadius: 16,onPressed: (){},)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
