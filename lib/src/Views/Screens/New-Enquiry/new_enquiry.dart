import 'package:cheval/src/Views/Routes/routes_name.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/custom_button.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:cheval/src/Views/widgets/customtextformfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';

class NewEnquiryScreen extends StatefulWidget {
  const NewEnquiryScreen({super.key});

  @override
  State<NewEnquiryScreen> createState() => _NewEnquiryScreenState();
}

class _NewEnquiryScreenState extends State<NewEnquiryScreen> {
  TextEditingController picklocation = TextEditingController();
  TextEditingController droplocation = TextEditingController();
  TextEditingController pickpincode = TextEditingController();
  TextEditingController droppincode = TextEditingController();
  TextEditingController date = TextEditingController();
  TextEditingController time = TextEditingController();
  LatLng? selectedLocation;
  String? pincode;
  String? location;
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
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

  Future<void> selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
      builder: (context, child) {
        return Theme(
          data: ThemeData.light(),
          child: child!,
        );
      },
    );
    if (picked != null) {
      setState(() {
        selectedTime = picked;
        time.text = selectedTime.format(context);
      });
    }
  }

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
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 38, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Place Enquiry',
                    style: Theme.of(context).textTheme.headlineSmall),
                16.vspace,
                Text('Pickup Location',
                    style: Theme.of(context).textTheme.titleMedium),
                2.vspace,
                ButtonWidget(
                  onPressed: () async {
                    final result = await Get.toNamed(Appnames.mapscreen);
                    if (result != null) {
                      setState(() {
                        selectedLocation = result['location'];
                        pincode = result['pincode'];
                        location = result['address'];
                        picklocation.text = location.toString();
                        pickpincode.text = pincode.toString();
                      });
                    }
                  },
                  text: 'Select Address from MAP',
                  width: MediaQuery.of(context).size.width / 1,
                  height: 43,
                  color: theme.splashColor,
                ),
                16.vspace,
                Text('Pincode*', style: Theme.of(context).textTheme.bodyLarge),
                CustomTextformfieldWidget(
                  keyboardType: TextInputType.number,
                  textEditingController: pickpincode,
                  vertical: 8,
                  horizontal: 12,
                ),
                16.vspace,
                Text('Location*', style: Theme.of(context).textTheme.bodyLarge),
                CustomTextformfieldWidget(
                  textEditingController: picklocation,
                  vertical: 8,
                  horizontal: 12,
                ),
                16.vspace,
                Text('Drop Location',
                    style: Theme.of(context).textTheme.titleMedium),
                2.vspace,
                ButtonWidget(
                  onPressed: () async {
                    final result = await Get.toNamed(Appnames.mapscreen);
                    if (result != null) {
                      setState(() {
                        selectedLocation = result['location'];
                        pincode = result['pincode'];
                        location = result['address'];
                        droplocation.text = location.toString();
                        droppincode.text = pincode.toString();
                      });
                    }
                  },
                  text: 'Select Address from MAP',
                  width: MediaQuery.of(context).size.width / 1,
                  height: 43,
                  color: theme.splashColor,
                ),
                16.vspace,
                Text('Pincode*', style: Theme.of(context).textTheme.bodyLarge),
                CustomTextformfieldWidget(
                  keyboardType: TextInputType.phone,
                  textEditingController: droppincode,
                  vertical: 8,
                  horizontal: 12,
                ),
                10.vspace,
                Text('Location*', style: Theme.of(context).textTheme.bodyLarge),
                CustomTextformfieldWidget(
                  textEditingController: droplocation,
                  vertical: 8,
                  horizontal: 12,
                ),
                20.vspace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pickup Date',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        2.vspace,
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2.3,
                          child: CustomTextformfieldWidget(
                            keyboardType: TextInputType.phone,
                            textEditingController: date,
                            vertical: 0,
                            horizontal: 20,
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
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pickup Time',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        2.vspace,
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2.3,
                          child: CustomTextformfieldWidget(
                            keyboardType: TextInputType.phone,
                            textEditingController: time,
                            vertical: 0,
                            horizontal: 30,
                            hinttext: '00:00 AM',
                            prefixIcon: InkWell(
                                onTap: () {
                                  selectTime(context);
                                },
                                child: const Icon(Icons.access_time,
                                    color: Colors.white)),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                36.vspace,
                Center(
                    child: ButtonWidget(
                        onPressed: () {
                          Get.toNamed(Appnames.newenquiry2);
                        },
                        text: 'Next',
                        width: MediaQuery.of(context).size.width / 2,
                        height: 46,
                        color: theme.splashColor)),
                16.vspace
              ],
            ),
          ),
        ),
      ),
    );
  }
}
