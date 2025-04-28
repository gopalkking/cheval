import 'package:cheval/src/Views/Routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/widgets/custom_button.dart';
import 'package:cheval/src/Views/widgets/phone_field_widget.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/back_arrow_widget.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:cheval/src/Views/widgets/textformfield.dart';

import 'package:get/get.dart';

class GenerateLR extends StatefulWidget {
  const GenerateLR({super.key});

  @override
  State<GenerateLR> createState() => _GenerateLRState();
}

class _GenerateLRState extends State<GenerateLR> {
  TextEditingController enquiry = TextEditingController();
  TextEditingController lr = TextEditingController();
  TextEditingController invoice = TextEditingController();
  TextEditingController modeofbooking = TextEditingController();
  TextEditingController modeoffreight = TextEditingController();
  TextEditingController insurance = TextEditingController();
  TextEditingController owner = TextEditingController();
  TextEditingController destination = TextEditingController();

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
                BackArrowWidget(text: 'Generate LR',onTap: (){
                  Get.back();
                }),
                16.vspace,
                Text('Enquiry #',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Appcolors.appColors.shade100
                ),),
                Textformfieldwidget(textEditingController: enquiry),
                16.vspace,
                Text('LR #',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Appcolors.appColors.shade100
                ),),
                Textformfieldwidget(textEditingController: lr),
                16.vspace,
                Text('Invoice #',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Appcolors.appColors.shade100
                ),),
                Textformfieldwidget(textEditingController: invoice),
                // 16.vspace,
                // Text('Mode OF Booking',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                //   color: Appcolors.appColors.shade100
                // ),),
                // Textformfieldwidget(textEditingController: modeofbooking),
                16.vspace,
                Text('Mode OF Freight',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Appcolors.appColors.shade100
                ),),
                Textformfieldwidget(textEditingController: modeoffreight),
                16.vspace,
                Text('Insurance Status',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Appcolors.appColors.shade100
                ),),
                Textformfieldwidget(textEditingController: insurance),
                16.vspace,
                Text('Owner Risk',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Appcolors.appColors.shade100
                ),),
                Textformfieldwidget(textEditingController: owner),
                16.vspace,
                Text('Destination Contact No*',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Appcolors.appColors.shade100
                ),),
                PhoneNumberField(textEditingController: destination, hintText: ''),
                16.vspace,
                Center(
                  child: ButtonWidget(text: 'Generate LR', width: 230, height: 50, color: theme.splashColor,onPressed: (){
                    Get.toNamed(Appnames.generateLROne);
                  },),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}