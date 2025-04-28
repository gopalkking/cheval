import 'package:cheval/src/Views/Routes/routes_name.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/widgets/custom_button_2.dart';
import 'package:cheval/src/Views/widgets/custom_dropdown.dart';
import 'package:cheval/src/Views/widgets/customtextformfield_widget.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ShipmentManagement extends StatefulWidget {
  const ShipmentManagement({super.key});

  @override
  State<ShipmentManagement> createState() => _ShipmentManagementState();
}

class _ShipmentManagementState extends State<ShipmentManagement> {
  TextEditingController enquiry = TextEditingController();
  TextEditingController fromLocation = TextEditingController();
  TextEditingController toLocation = TextEditingController();
  TextEditingController droppincode = TextEditingController();
  TextEditingController date = TextEditingController();
  String? location;
  DateTime selectedDate = DateTime.now();
  String? selectedstatus, selectedcustomer;
  List<String> status = ['Open', 'Hold', 'Closed'];
  List<String> customer = ['Value1', 'Value2', 'Value3'];
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

  Widget _buildDropdown(String label, List<String> items, String? value,
      ValueChanged<String?> onChanged) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: Theme.of(context).textTheme.bodyLarge),
        2.vspace,
        SizedBox(
            width: MediaQuery.of(context).size.width / 2.3,
            child: CustomDropdown(
                value: value,
                items: items,
                onChanged: onChanged,
                labeltext: 'Select')),
      ],
    );
  }

  Widget _buildTextField(String label, TextEditingController controller,
      {VoidCallback? onTap, bool isDate = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: Theme.of(context).textTheme.bodyLarge),
        2.vspace,
        SizedBox(
          width: MediaQuery.of(context).size.width / 2.3,
          child: CustomTextformfieldWidget(
            textEditingController: controller,
            hinttext: isDate ? 'DD/MM/YYYY' : 'Enter $label',
            vertical: 13,
            horizontal: 12,
            prefixIcon: isDate
                ? InkWell(
                    onTap: () => selectDate(context),
                    child:
                        const Icon(Icons.calendar_month, color: Colors.white))
                : null,
            onPressed: onTap,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        _buildTextField('Enquiry #', enquiry),
                        8.vspace,
                        _buildTextField('From Location', fromLocation),
                        8.vspace,
                        _buildDropdown('Enquiry Status', status, selectedstatus,
                            (val) => setState(() => selectedstatus = val)),
                      ],
                    ),
                    Column(children: [
                      _buildTextField('Enquiry Date', date, isDate: true),
                      8.vspace,
                      _buildTextField('To Location', toLocation),
                      8.vspace,
                      _buildDropdown(
                          'Consignor/ Customer',
                          customer,
                          selectedcustomer,
                          (val) => setState(() => selectedcustomer = val)),
                    ]),
                  ],
                ),
                16.vspace,
                ButtonWidget2(
                  text: 'Search',
                  width: MediaQuery.of(context).size.width / 3.9,
                  height: 36,
                  color: Appcolors.appColors.shade100,
                  onPressed: () {},
                  borderRadius: 8,
                ),
                8.vspace,
                ListView.builder(
                    itemCount: 2,
                    padding: const EdgeInsets.all(0),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              color: theme.hintColor),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Enquiry #:12345667890',
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
                                    ),
                                    Text(
                                      'Consignor:Lorem ipsum',
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
                                    ),
                                    Text(
                                      'Date:25-Dec-2024',
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
                                    ),
                                    Text(
                                      'From Location:Pune',
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
                                    ),
                                    Text(
                                      'To Location:Mumbai',
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
                                    ),
                                    Text(
                                      'Status:In Progress',
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
                                    ),
                                  ],
                                ),
                                ButtonWidget2(
                                  text: 'View',
                                  width:
                                      MediaQuery.of(context).size.width / 4.1,
                                  height: 30,
                                  color: Appcolors.appColors.shade100,
                                  onPressed: () {
                                    Get.toNamed(Appnames.shipmentView);
                                  },
                                  borderRadius: 4,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    })
              ],
            )));
  }
}
