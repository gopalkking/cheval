import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/back_arrow_widget.dart';
import 'package:cheval/src/Views/widgets/common_answer_text.dart';
import 'package:cheval/src/Views/widgets/common_question_text.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommunicationView extends StatefulWidget {
  const CommunicationView({super.key});

  @override
  State<CommunicationView> createState() => _CommunicationViewState();
}

class _CommunicationViewState extends State<CommunicationView> {
  @override
  Widget build(BuildContext context) {
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
                BackArrowWidget(text: "Communications",onTap: (){
                  Get.back();
                },),
                36.vspace,
                                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const CommonQuestionText(text: "Sender Name"),
                                      8.vspace,
                                      const CommonQuestionText(text: "Date"),
                                      8.vspace, 
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      const CommonAnswerText(text: "Jhon"),
                                      8.vspace,
                                      const CommonAnswerText(text: "11/02/2025"),
                                      8.vspace,
                                    ],
                                  ),
                                ],
                              ),
                              const Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                   Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       CommonQuestionText(text: "View"),
                                     ],
                                   ),
                                   Column(
                                     children: [
                                       SizedBox(
                                            width: 200,
                                            child: CommonAnswerText(text: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex tempora iure eos ipsa. Optio obcaecati harum voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex tempora iure eos ipsa. Optio obcaecati harum voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex tempora iure eos ipsa. Optio obcaecati harum voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex tempora iure eos ipsa. Optio obcaecati harum voluptatum.")),
                                     ],
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
}