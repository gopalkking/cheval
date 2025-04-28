import 'package:cheval/src/Views/Routes/routes_name.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/custom_dropdown.dart';
import 'package:cheval/src/Views/widgets/customtextformfield_widget.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class EnquiryManagement extends StatefulWidget {
  const EnquiryManagement({super.key});

  @override
  State<EnquiryManagement> createState() => _EnquiryManagementState();
}

class _EnquiryManagementState extends State<EnquiryManagement> {
  TextEditingController enquiry = TextEditingController();
  TextEditingController fromLocation = TextEditingController();
  TextEditingController toLocation = TextEditingController();
  TextEditingController droppincode = TextEditingController();
  TextEditingController date = TextEditingController();
  String? location;
  DateTime selectedDate = DateTime.now();
  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      initialDatePickerMode: DatePickerMode.day,
      firstDate: DateTime(1960),
      lastDate: DateTime(2101),
      builder: (context, child) {
        return Theme(
          data: ThemeData.light(),
          child: child!,
        );
      },
    );
    if (picked != null) {
      setState(() {
        selectedDate = picked;
        date.text = DateFormat('dd/MM/yyyy').format(selectedDate);
      });
    }
  }

  List<String> status = ['Open', 'Hold', 'Closed'];
  String? selectedstatus;
  List<String> customer = ['Value1', 'Value2', 'Value3'];
  String? selectedcustomer;

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
                  padding:
                      const EdgeInsets.symmetric(vertical: 36, horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.toNamed(Appnames.enquiryView);
                            },
                            child: Image.asset(
                              Appimage.down,
                              height: 36,
                              width: 36,
                            ),
                          ),
                          8.hspace,
                          Text('Enquiry Management',
                              style:
                                  Theme.of(context).textTheme.headlineSmall),
                        ],
                      ),
                      8.vspace,
                      Text('Custom Search',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: theme.splashColor)),
                      12.vspace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Enquiry #:',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              2.vspace,
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 2.3,
                                child: CustomTextformfieldWidget(
                                  hinttext: '   Enter Enquiry #   ',
                                  textEditingController: enquiry,
                                  vertical: 13,
                                  horizontal: 12,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Enquiry Date:',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              2.vspace,
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 2.3,
                                child: CustomTextformfieldWidget(
                                  keyboardType: TextInputType.phone,
                                  textEditingController: date,
                                  vertical: 13,
                                  horizontal: 12,
                                  hinttext: 'DD/MM/YYYY',
                                  prefixIcon: InkWell(
                                    onTap: () {
                                      selectDate(context);
                                    },
                                    child: const Icon(
                                      Icons.calendar_month,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      16.vspace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'From Location:',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              2.vspace,
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 2.3,
                                child: CustomTextformfieldWidget(
                                  hinttext: '   Enter Location   ',
                                  textEditingController: fromLocation,
                                  vertical: 13,
                                  horizontal: 12,
                                  onPressed: () async {
                                    final result =
                                        await Get.toNamed(Appnames.mapscreen);
                                    if (result != null) {
                                      setState(() {
                                        location = result['address'];
                                        fromLocation.text = location.toString();
                                      });
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'To Location',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              2.vspace,
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 2.3,
                                child: CustomTextformfieldWidget(
                                  keyboardType: TextInputType.phone,
                                  textEditingController: toLocation,
                                  vertical: 13,
                                  horizontal: 12,
                                  hinttext: '   Enter Location   ',
                                  onPressed: () async {
                                    final result =
                                        await Get.toNamed(Appnames.mapscreen);
                                    if (result != null) {
                                      setState(() {
                                        location = result['address'];
                                        toLocation.text = location.toString();
                                      });
                                    }
                                  },
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      16.vspace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Enquiry Status:',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              2.vspace,
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width / 2.3,
                                  child: CustomDropdown(
                                      value: selectedstatus,
                                      onChanged: (newValue) {
                                        setState(() {
                                          selectedstatus = newValue;
                                        });
                                      },
                                      items: status)),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Consignor/ Customer:',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              2.vspace,
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width / 2.3,
                                  child: CustomDropdown(
                                      labeltext: 'Select',
                                      value: selectedcustomer,
                                      onChanged: (newValue) {
                                        setState(() {
                                          selectedcustomer = newValue;
                                        });
                                      },
                                      items: customer)),
                            ],
                          )
                        ],
                      ),
                      24.vspace,
                      SizedBox(
                        width: 140,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Appcolors.appColors.shade100,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))),
                            onPressed: () {
                              
                            },
                            child: Text(
                              'Search',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                    color: theme.splashColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                            )),
                      ),
                      24.vspace,
                      enquiryContainer(
                        const Color(0xff005D67),
                        Appcolors.appColors.shade100,
                        'Enquiry #: 1234567890',
                        'Consignor: Lorem Ipsum',
                        'Date: 25-Dec-2024',
                        'From Location: Pune',
                        'To Location: Mumbai',
                        'Status: Accepted',
                        SizedBox(
                          height: 30,
                          width: 100,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8))),
                              onPressed: () {
                                Get.toNamed(Appnames.enquiryAcceptedView);
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
                        ),
                      ),                       
                      8.vspace,
                       enquiryContainer(
                       Appcolors.appColors.shade100,
                         const Color(0xff005D67),
                        'Enquiry #: 1234567890',
                        'Consignor: Lorem Ipsum',
                        'Date: 25-Dec-2024',
                        'From Location: Pune',
                        'To Location: Mumbai',
                        'Status: Received',
                        SizedBox(
                          height: 30,
                          width: 100,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:  const Color(0xff005D67),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8))),
                              onPressed: () {
                                Get.toNamed(Appnames.enquiryView);
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
                        ),
                      ),
                      8.vspace,
                      enquiryContainer(
                        theme.splashColor,
                        Appcolors.appColors.shade100,
                        'Enquiry #: 1234567890',
                        'Consignor: Lorem Ipsum',
                        'Date: 25-Dec-2024',
                        'From Location: Pune',
                        'To Location: Mumbai',
                        'Status: Open',
                        SizedBox(
                          height: 30,
                          width: 100,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8))),
                              onPressed: () {
                                Get.toNamed(Appnames.enquiryView);
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
                        ),
                      ),
                    ],
                  )))),
    );
  }

  Widget enquiryContainer(
      Color color,
      Color textColor,
      String enquirytext,
      String consignor,
      String date,
      String from,
      String to,
      String status,
      Widget buttonwidget) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(
          color: Appcolors.appColors.shade100,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
        color: color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                enquirytext,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: textColor,
                    ),
              ),
              Text(
                consignor,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: textColor,
                    ),
              ),
              Text(
                date,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: textColor,
                    ),
              ),
              Text(
                from,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: textColor,
                    ),
              ),
              Text(
                to,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: textColor,
                    ),
              ),
              Text(
                status,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: textColor,
                    ),
              ),
            ],
          ),
          buttonwidget
        ],
      ),
    );
  }
}
