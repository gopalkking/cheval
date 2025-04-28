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

class AddressDetails extends StatefulWidget {
  const AddressDetails({super.key});

  @override
  State<AddressDetails> createState() => _AddressDetailsState();
}

class _AddressDetailsState extends State<AddressDetails> {
  TextEditingController addressline1 = TextEditingController();
  TextEditingController addressline2 = TextEditingController();
  TextEditingController pincode = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController pickuptime = TextEditingController();
  TextEditingController pickupdate = TextEditingController();
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
                  text: 'Location Details',
                  onTap: () {
                    Get.back();
                  },
                ),
                16.vspace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    8.vspace,
                    Text('Pickup Details',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            fontWeight: FontWeight.w700,
                            color: theme.splashColor,
                            fontSize: 18)),
                    // const Spacer(),
                    // Text(
                    //   'Edit',
                    //   style: Theme.of(context)
                    //       .textTheme
                    //       .bodyLarge!
                    //       .copyWith(color: Appcolors.appColors.shade100),
                    // ),
                    // Image.asset(
                    //   Appimage.edit,
                    //   height: 26,
                    //   width: 26,
                    // )
                  ],
                ),
                8.vspace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Address Line 1',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: Appcolors.appColors.shade100),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 2.3,
                            child: Textformfieldwidget(
                                textEditingController: addressline1)),
                        8.vspace,
                        Text(
                          'Pincode',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: Appcolors.appColors.shade100),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 2.3,
                            child: Textformfieldwidget(
                                textEditingController: pincode)),
                        8.vspace,
                        Text(
                          'State',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: Appcolors.appColors.shade100),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 2.3,
                            child: Textformfieldwidget(
                                textEditingController: state)),
                        // 8.vspace,
                        // Text(
                        //   'Pickup Time',
                        //   style: Theme.of(context)
                        //       .textTheme
                        //       .bodyLarge!
                        //       .copyWith(color: Appcolors.appColors.shade100),
                        // ),
                        // SizedBox(
                        //     width: MediaQuery.of(context).size.width / 2.3,
                        //     child: Textformfieldwidget(
                        //         textEditingController: pickuptime))
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Address Line 2',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: Appcolors.appColors.shade100),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 2.3,
                            child: Textformfieldwidget(
                                textEditingController: addressline2)),
                        8.vspace,
                        Text(
                          'City',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: Appcolors.appColors.shade100),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 2.3,
                            child: Textformfieldwidget(
                                textEditingController: city)),
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
                                textEditingController: pickupdate)),
                      ],
                    ),
                  ],
                ),
                16.vspace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Drop Location',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            fontWeight: FontWeight.w700,
                            color: theme.splashColor,
                            fontSize: 18)),
                    // const Spacer(),
                    // Text(
                    //   'Edit',
                    //   style: Theme.of(context)
                    //       .textTheme
                    //       .bodyLarge!
                    //       .copyWith(color: Appcolors.appColors.shade100),
                    // ),
                    // Image.asset(
                    //   Appimage.edit,
                    //   height: 26,
                    //   width: 26,
                    // )
                  ],
                ),
                8.vspace,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Address Line 1',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: Appcolors.appColors.shade100),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 2.3,
                            child: Textformfieldwidget(
                                textEditingController: addressline1)),
                        8.vspace,
                        Text(
                          'Pincode',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: Appcolors.appColors.shade100),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 2.3,
                            child: Textformfieldwidget(
                                textEditingController: pincode)),
                        8.vspace,
                        Text(
                          'State',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: Appcolors.appColors.shade100),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 2.3,
                            child: Textformfieldwidget(
                                textEditingController: state)),
                        // 8.vspace,
                        // Text(
                        //   'Pickup Time',
                        //   style: Theme.of(context)
                        //       .textTheme
                        //       .bodyLarge!
                        //       .copyWith(color: Appcolors.appColors.shade100),
                        // ),
                        // SizedBox(
                        //     width: MediaQuery.of(context).size.width / 2.3,
                        //     child: Textformfieldwidget(
                        //         textEditingController: pickuptime))
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Address Line 2',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: Appcolors.appColors.shade100),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 2.3,
                            child: Textformfieldwidget(
                                textEditingController: addressline2)),
                        8.vspace,
                        Text(
                          'City',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: Appcolors.appColors.shade100),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 2.3,
                            child: Textformfieldwidget(
                                textEditingController: city)),
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
                                textEditingController: pickupdate,
                                )),
                      ],
                    ),
                  ],
                ),
                56.vspace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                  children: [
                     OutlineButtonWidget(text: 'Cancel', width: 180, height: 40, color: theme.splashColor,onPressed: (){
                      Get.toNamed(Appnames.enquiryAcceptedView);
                    },textcolor: theme.splashColor,),
                    ButtonWidget(text: 'Save', width: 180, height: 40, color: theme.splashColor,onPressed: (){
                      //Get.toNamed(Appnames.addressViewScreen);
                    },),
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
}
