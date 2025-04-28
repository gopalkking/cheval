import 'package:cheval/src/Views/Routes/routes_name.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/back_arrow_widget.dart';
import 'package:cheval/src/Views/widgets/custom_button.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:cheval/src/Views/widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConsigneeDetails extends StatefulWidget {
  const ConsigneeDetails({super.key});

  @override
  State<ConsigneeDetails> createState() => _ConsigneeDetailsState();
}

class _ConsigneeDetailsState extends State<ConsigneeDetails> {
  TextEditingController customerName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController businessName = TextEditingController();
  TextEditingController contactNumber = TextEditingController();
  TextEditingController gstin = TextEditingController();
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
            padding: const EdgeInsets.symmetric(vertical: 36,horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BackArrowWidget(text: 'Consignee Details',onTap: (){
                  Get.back();
                },),
                16.vspace,
                Text('Consignor Name',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Appcolors.appColors.shade100
                ),),
                Textformfieldwidget(textEditingController: customerName),
                8.vspace,
                 Text('Email',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Appcolors.appColors.shade100
                ),),
                Textformfieldwidget(textEditingController: email),
                8.vspace,
                 Text('Business Name',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Appcolors.appColors.shade100
                ),),
                Textformfieldwidget(textEditingController: businessName),
                8.vspace,
                 Text('Contact Number',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Appcolors.appColors.shade100
                ),),
                Textformfieldwidget(textEditingController: contactNumber),
                8.vspace,
                 Text('GSTIN',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Appcolors.appColors.shade100
                ),),
                Textformfieldwidget(textEditingController: gstin),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 4,
                ),
                Center(child: ButtonWidget(text: 'Next', width: 180, height: 40, color: theme.splashColor,onPressed: (){
                  Get.toNamed(Appnames.addressDetails);
                },))
              ],
            ),
          ),
        ),
      ),
    );
  }
}