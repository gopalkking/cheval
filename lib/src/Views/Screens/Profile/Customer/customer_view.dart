import 'package:cheval/src/Views/Routes/routes_name.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/back_arrow_widget.dart';
import 'package:cheval/src/Views/widgets/common_answer_text.dart';
import 'package:cheval/src/Views/widgets/common_question_text.dart';
import 'package:cheval/src/Views/widgets/custom_button.dart';
import 'package:cheval/src/Views/widgets/custom_outline_button.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomerViewScreen extends StatefulWidget {
  const CustomerViewScreen({super.key});

  @override
  State<CustomerViewScreen> createState() => _CustomerViewScreenState();
}

class _CustomerViewScreenState extends State<CustomerViewScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
    decoration: BoxDecoration(
        image: const DecorationImage(
            image: AssetImage(Appimage.map), alignment: Alignment.bottomCenter,fit: BoxFit.contain),
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
                BackArrowWidget(text: "Customer Management",onTap: (){
                  Get.back();
                },),
                //  Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Image.asset(Appimage.down,height: 30,width: 20,),
                //     Text('Customer Management',style: Theme.of(context).textTheme.headlineSmall,)
                //   ],
                // ),
                36.vspace,
                Text('Customer Details',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Theme.of(context).splashColor)),
                8.vspace,
                                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const CommonQuestionText(text: "Customer Name"),
                                      8.vspace,
                                      const CommonQuestionText(text: "Email"),
                                      8.vspace,
                                      const CommonQuestionText(text: "Business Name"),
                                      8.vspace,
                                      const CommonQuestionText(text: "Contact Number"),
                                      8.vspace,
                                      const CommonQuestionText(text: "GSTIN"),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      const CommonAnswerText(text: "#24637"),
                                      8.vspace,
                                      const CommonAnswerText(text: "jhon@gmail.com"),
                                      8.vspace,
                                      const CommonAnswerText(text: "Name"),
                                      8.vspace,
                                      const CommonAnswerText(text: "00000 00000"),
                                      8.vspace,
                                      const CommonAnswerText(text: "12ertyy"),
                                    ],
                                  ),
                                ],
                              ),
                16.vspace,
                 Text('Location Details',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Theme.of(context).splashColor)),
                8.vspace,
                                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const CommonQuestionText(text: "Address"),
                                      8.vspace,
                                      const CommonQuestionText(text: "Pincode"),
                                      8.vspace,
                                      const CommonQuestionText(text: "City"),
                                      8.vspace,
                                      const CommonQuestionText(text: "State"),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      const CommonAnswerText(text: "#24637"),
                                      8.vspace,
                                      const CommonAnswerText(text: "jhon@gmail.com"),
                                      8.vspace,
                                      const CommonAnswerText(text: "Name"),
                                      8.vspace,
                                      const CommonAnswerText(text: "abcf"),
                                    ],
                                  ),
                                ],
                              ),
                              54.vspace,
                              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                  children: [
                     OutlineButtonWidget(text: 'Cancel', width: 180, height: 40, color: theme.splashColor,onPressed: (){
                      Get.toNamed(Appnames.customerManagement);
                    },textcolor: theme.splashColor,),
                    ButtonWidget(text: 'Edit', width: 180, height: 40, color: theme.splashColor,onPressed: (){
                      Get.toNamed(Appnames.customerAdd);
                    },),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}