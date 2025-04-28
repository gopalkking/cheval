import 'package:cheval/src/Views/Routes/routes_name.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/back_arrow_widget.dart';
import 'package:cheval/src/Views/widgets/communication_widget.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CommunicationsScreen extends StatefulWidget {
  const CommunicationsScreen({super.key});

  @override
  State<CommunicationsScreen> createState() => _CommunicationsScreenState();
}

class _CommunicationsScreenState extends State<CommunicationsScreen> {
  TextEditingController dob = TextEditingController();
  DateTime selectedDate = DateTime.now();
  String? setDate = "DD-MM-YYYY";
  String? dateTime;
  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(1960),
        lastDate: DateTime(2101));
    if (picked != null) {
      setState(() {
        selectedDate = picked;
        dob.text = DateFormat('dd/MM/yyyy').format(selectedDate);
      });
    }
  }

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
            padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BackArrowWidget(text: "Communications",onTap: (){
                  Get.back();
                },),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Image.asset(
                //       Appimage.down,
                //       height: 30,
                //       width: 20,
                //     ),
                //     Text(
                //       'Communications',
                //       style: Theme.of(context).textTheme.headlineSmall,
                //     )
                //   ],
                // ),
                24.vspace,
                Text('Search By Date',
                    style: Theme.of(context).textTheme.bodyLarge),
                8.vspace,
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: dob,
                  style: Theme.of(context).textTheme.bodyLarge,
                  decoration: InputDecoration(
                    hintText: 'DD/MM/YYYY',
                    hintStyle: Theme.of(context).textTheme.bodyLarge,
                    suffixIcon: IconButton(
                        onPressed: () {
                          selectDate(context);
                        },
                        icon: Icon(Icons.calendar_month,
                            color: Appcolors.appColors.shade100)),
                    contentPadding: const EdgeInsets.only(top: 12, left: 8),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(
                        color: theme.splashColor,
                        width: 2.0,
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide:
                            BorderSide(color: theme.splashColor, width: 2.0)),
                  ),
                ),
                36.vspace,
                CommunicationsWidget(
                    color: const Color(0xff005D67),
                    textColor: Appcolors.appColors.shade100,
                    text: 'Date:',
                    text1: 'Sender Name:',
                    text2: 'First two lines of message sent',
                    widget: SizedBox(
                      height: 30,
                      width: 100,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          onPressed: () {
                              Get.toNamed(Appnames.communicationView);
                          },
                          child: Text(
                            'View',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: theme.splashColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700),
                          )),
                    )),
                16.vspace,
                CommunicationsWidget(
                    color: Appcolors.appColors.shade100,
                    textColor: const Color(0xff005D67),
                    text: 'Date:',
                    text1: 'Sender Name:',
                    text2: 'First two lines of message sent',
                    widget: SizedBox(
                      height: 30,
                      width: 100,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff005D67),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          onPressed: () {
                            Get.toNamed(Appnames.communicationView);
                          },
                          child: Text(
                            'View',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: Appcolors.appColors.shade100,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700),
                          )),
                    )),
                16.vspace,
                CommunicationsWidget(
                    color: theme.splashColor,
                    textColor: Appcolors.appColors.shade100,
                    text: 'Date:',
                    text1: 'Sender Name:',
                    text2: 'First two lines of message sent',
                    widget: SizedBox(
                      height: 30,
                      width: 100,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          onPressed: () {
                            Get.toNamed(Appnames.communicationView);
                          },
                          child: Text(
                            'View',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: theme.splashColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700),
                          )),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
