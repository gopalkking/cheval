import 'package:cheval/src/Views/widgets/common_answer_text.dart';
import 'package:cheval/src/Views/widgets/common_question_text.dart';
import 'package:cheval/src/Views/widgets/filter_widget.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:flutter/material.dart';

class BookingReport extends StatefulWidget {
  const BookingReport({super.key,});

  @override
  State<BookingReport> createState() => _BookingReportState();
}

class _BookingReportState extends State<BookingReport> {
  @override
  Widget build(BuildContext context) {
       ThemeData theme = Theme.of(context);
    return SingleChildScrollView(
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: FilterWidget(onPressed: (){
              //  showMenu(
              //                 context: context,
              //                 position: const RelativeRect.fromLTRB(100, 270, 0,
              //                     0), 
              //                     color: Colors.black,
              //                 items: [
              //                   PopupMenuItem(
              //                     value: 'option1',
              //                     child: Text('This Month',style: theme.textTheme.bodyLarge!.copyWith(fontSize: 20),),
              //                   ),
              //                   PopupMenuItem(
              //                     value: 'option1',
              //                     child: Text('Last Month',style: theme.textTheme.bodyLarge!.copyWith(fontSize: 20),),
              //                   ),
              //                    PopupMenuItem(
              //                     value: 'option1',
              //                     child: Text('Last 3 Month',style: theme.textTheme.bodyLarge!.copyWith(fontSize: 20),),
              //                   ),
              //                   PopupMenuItem(
              //                     value: 'option2',
              //                     child: Text('Last 6 Months',style: theme.textTheme.bodyLarge!.copyWith(fontSize: 20),),
              //                   ),
              //                 ],
              //               );
            })
          ),
           16.vspace,
                     Container(
                       padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black),
                       child: ListView.builder(
                          itemCount: 4,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: const EdgeInsets.all(0),
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.all(6),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: theme.scaffoldBackgroundColor),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Text("Date", style: theme.textTheme.headlineSmall,),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                             const CommonQuestionText(text: "Bid Accepted"),
                                            8.vspace,
                                             const CommonQuestionText(text: "Bid Amount"),
                                            8.vspace,
                                             const CommonQuestionText(text: "Payment Collected"),
                                            8.vspace,
                                             const CommonQuestionText(text: "Payment Balance"),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                             const CommonAnswerText(text: "₹56"),
                                          8.vspace,
                                             const CommonAnswerText(text: "₹778"),
                                          8.vspace,
                                             const CommonAnswerText(text: "₹56778"),
                                          8.vspace,
                                             const CommonAnswerText(text: "₹2356"),
                                        ],
                                      ),
                                      
                                    ],
                                  ),
                                ],
                              ),
                            );
                          }),
                     ),
      
        ],
      ),
    );
  }
}
