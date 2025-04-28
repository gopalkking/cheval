import 'package:cheval/src/Views/Routes/routes_name.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/back_arrow_widget.dart';
import 'package:cheval/src/Views/widgets/common_answer_text.dart';
import 'package:cheval/src/Views/widgets/common_question_text.dart';
import 'package:cheval/src/Views/widgets/custom_button.dart';
import 'package:cheval/src/Views/widgets/dialog_widget.dart';
import 'package:cheval/src/Views/widgets/filter_widget.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InvoicePayments extends StatefulWidget {
  const InvoicePayments({super.key});

  @override
  State<InvoicePayments> createState() => _InvoicePaymentsState();
}

class _InvoicePaymentsState extends State<InvoicePayments> {
  @override
  Widget build(BuildContext context) {
     ThemeData theme = Theme.of(context);
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
       padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 16),
          child: Column(
            children: [
               BackArrowWidget(
                  text: 'Invoice & Payments',
                  onTap: () {
                    Get.back();
                  },
                ),
              16.vspace,
              Align(
                alignment: Alignment.topRight,
                child: FilterWidget(onPressed: (){
                   showMenu(
                                context: context,
                                position: const RelativeRect.fromLTRB(100, 200, 0,
                                    0), 
                                    color: Colors.black,
                                items: [
                                  PopupMenuItem(
                                    value: 'option1',
                                    child: Text('This Month',style: theme.textTheme.bodyLarge!.copyWith(fontSize: 20),),
                                  ),
                                  PopupMenuItem(
                                    value: 'option1',
                                    child: Text('Last Month',style: theme.textTheme.bodyLarge!.copyWith(fontSize: 20),),
                                  ),
                                   PopupMenuItem(
                                    value: 'option1',
                                    child: Text('Last 3 Month',style: theme.textTheme.bodyLarge!.copyWith(fontSize: 20),),
                                  ),
                                  PopupMenuItem(
                                    value: 'option2',
                                    child: Text('Last 6 Months',style: theme.textTheme.bodyLarge!.copyWith(fontSize: 20),),
                                  ),
                                ],
                              );
                })),
              16.vspace,
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8), color: Colors.black),
                child: ListView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(0),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){
                           Get.toNamed(Appnames.invoice);
                        },
                        child: Container(
                          margin: const EdgeInsets.all(6),
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: theme.scaffoldBackgroundColor),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Text(
                                      "Customer Name",
                                      style: theme.textTheme.headlineSmall!
                                          .copyWith(fontSize: 22),
                                    ),
                                    8.vspace,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const CommonQuestionText(text: "Invoice Number"),
                                      8.vspace,
                                      const CommonQuestionText(
                                          text: "Invoice Date"),
                                      8.vspace,
                                      const CommonQuestionText(text: "Customer Name"),
                                      8.vspace,
                                      const CommonQuestionText(text: "Customer Contact"),
                                      8.vspace,
                                      const CommonQuestionText(text: "Advance Received"),
                                      8.vspace,
                                      const CommonQuestionText(text: "Amount Pending"),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      const CommonAnswerText(text: "#24637"),
                                      8.vspace,
                                      const CommonAnswerText(text: "12.03.2025"),
                                      8.vspace,
                                      const CommonAnswerText(text: "Name"),
                                      8.vspace,
                                      const CommonAnswerText(text: "00000 00000"),
                                      8.vspace,
                                      const CommonAnswerText(text: "₹567"),
                                      8.vspace,
                                      const CommonAnswerText(text: "₹567"),
                                      8.vspace
                                    ],
                                  ),
                                ],
                              ),
                              16.vspace,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  26.hspace,
                                  ButtonWidget(
                                    text: 'Delete',
                                    textcolor: Colors.white,
                                    width: MediaQuery.of(context).size.width / 3.8,
                                    height: 48,
                                    color: Colors.red,
                                    onPressed: () {
                                      alertBox();
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  alertBox() {
    return showDialog(
        context: context,
        builder: (context) {
          return MyDialogWidget(
            text: "Delete",
            text1: 'Are you Sure?',
            text2: ' Are you sure? Do you want to delete Permanently (name).',
            buttontext: 'Delete',
            canceltext: 'Cancel',
            onPressed: () {
              Navigator.pop(context);
            },
            cancelButton: () {
              Navigator.pop(context);
            },
          );
        });
  }
}