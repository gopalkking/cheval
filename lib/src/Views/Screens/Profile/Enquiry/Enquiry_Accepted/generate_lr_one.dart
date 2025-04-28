import 'package:cheval/src/Views/Routes/routes_name.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/back_arrow_widget.dart';
import 'package:cheval/src/Views/widgets/custom_button.dart';
import 'package:cheval/src/Views/widgets/custom_outline_button.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:cheval/src/Views/widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GenerateLROne extends StatefulWidget {
  const GenerateLROne({super.key});

  @override
  State<GenerateLROne> createState() => _GenerateLROneState();
}

class _GenerateLROneState extends State<GenerateLROne> {
  TextEditingController name = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController contactperson = TextEditingController();
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
        backgroundColor:Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 36,horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackArrowWidget(text: 'Generate LR',onTap: (){
                  Get.back();
                }),
                // 16.vspace,
                // Text('Pickup Location',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                //   fontWeight: FontWeight.w600,
                // ),),
                 8.vspace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(
                    //   height: 40,
                    //   width: MediaQuery.of(context).size.width / 2.5,
                    //   child: ElevatedButton(
                    //     style: ElevatedButton.styleFrom(
                    //       backgroundColor: theme.splashColor,
                    //       shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(8)
                    //       )
                    //     ),
                    //     onPressed: (){}, 
                    //   child: Text('Add Consignor',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    //     color:Appcolors.appColors.shade100,
                    //     fontWeight: FontWeight.w700,
                    //     fontSize: 18
                    //   ),)),
                    // ),
                    SizedBox(
                      height: 40,
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: theme.splashColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                          )
                        ),
                        onPressed: (){}, 
                      child: Text('Add Other than Consignee',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color:Appcolors.appColors.shade100,
                        fontWeight: FontWeight.w700,
                        fontSize: 18
                      ),)),
                    )
                  ],
                ),
                16.vspace,
                 Text('Name',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Appcolors.appColors.shade100
                ),),
                Textformfieldwidget(textEditingController: name),
                16.vspace,
                 Text('Address',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Appcolors.appColors.shade100
                ),),
                Textformfieldwidget(textEditingController: address),
                16.vspace,
                 Text('Contact Person',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Appcolors.appColors.shade100
                ),),
                Textformfieldwidget(textEditingController: contactperson),
                // 16.vspace,
                //  Text('Contact Number',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                //   color: Appcolors.appColors.shade100
                // ),),
                // Textformfieldwidget(textEditingController: contactNumber),
                16.vspace,
                 Text('GSTIN',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Appcolors.appColors.shade100
                ),),
                Textformfieldwidget(textEditingController: gstin),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 7,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                  children: [
                     OutlineButtonWidget(text: 'Cancel', width: 180, height: 40, color: theme.splashColor,onPressed: (){
                      Get.toNamed(Appnames.enquiryAcceptedView);
                    },textcolor: theme.splashColor,),
                    ButtonWidget(text: 'Generate LR', width: 180, height: 40, color: theme.splashColor,onPressed: (){
                      //  Get.toNamed(Appnames.generateOptions);
                    },),
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