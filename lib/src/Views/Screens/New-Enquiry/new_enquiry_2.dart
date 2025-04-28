import 'package:cheval/src/Views/Routes/routes_name.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/back_arrow_widget.dart';
import 'package:cheval/src/Views/widgets/custom_button.dart';
import 'package:cheval/src/Views/widgets/custom_dropdown.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:cheval/src/Views/widgets/customtextformfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewEnquiry2Screen extends StatefulWidget {
  const NewEnquiry2Screen({super.key});

  @override
  State<NewEnquiry2Screen> createState() => _NewEnquiry2ScreenState();
}

class _NewEnquiry2ScreenState extends State<NewEnquiry2Screen> {
  TextEditingController description = TextEditingController();
  TextEditingController packagingType = TextEditingController();
  TextEditingController packagingWeight = TextEditingController();
  TextEditingController numberOfPackages = TextEditingController();
  final items = ['Boxes', 'Bags', 'Cups & Cartons'];
  final goodstype = ['Private goods', 'Public goods', 'Shopping goods'];
  final vechicletype = ['Lorry', 'Van', 'Truck'];
  String? selectedGoodsType;
  String? selectedVehicleType;
  String? selectedtype;
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
            padding: const EdgeInsets.symmetric(vertical: 38,horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
               BackArrowWidget(text: 'Place Enquoiry',onTap: (){
                Get.back();
               },),
               16.vspace,
                Text('Goods Type',
                    style: Theme.of(context).textTheme.bodyLarge),
                8.vspace,
                CustomDropdown(
                    labeltext: 'Select Goods Type',
                    value: selectedGoodsType,
                    onChanged: (newValue) {
                      setState(() {
                        selectedGoodsType = newValue;
                      });
                    },
                    items: goodstype),
                15.vspace,
                Text('Vechicle Type',
                    style: Theme.of(context).textTheme.bodyLarge),
                      5.vspace,
                CustomDropdown(
                    labeltext: 'Select Vechicle Type',
                    value: selectedVehicleType,
                    onChanged: (newValue) {
                      setState(() {
                        selectedVehicleType = newValue;
                      });
                    },
                    items: vechicletype),
                15.vspace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Packaging Type',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        5.vspace,
                        SizedBox(
                            width:
                                MediaQuery.of(context).size.width / 2.3,
                            child: CustomDropdown(
                                labeltext: 'Packaging Type',
                                value: selectedtype,
                                onChanged: (newValue) {
                                  setState(() {
                                    selectedtype = newValue;
                                  });
                                },
                                items: items)),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'No of Packages',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        2.vspace,
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2.3,
                          child: CustomTextformfieldWidget(
                            keyboardType: TextInputType.phone,
                            textEditingController: numberOfPackages,
                            vertical: 13,
                            horizontal: 30,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                15.vspace,
                Text(
                  'Packaging weight',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                5.vspace,
                CustomTextformfieldWidget(
                  keyboardType: TextInputType.phone,
                  textEditingController: packagingWeight,
                  vertical: 13,
                  horizontal: 12,
                ),
                15.vspace,
                Text(
                  'Description',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                  5.vspace,
                TextFormField(
                  controller: description,
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    fillColor: Appcolors.appColors.shade400,
                    filled: true,
                    border: InputBorder.none,
                    hintText:
                        'e.g: temperature control,fragile goods handling',
                    hintStyle: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Appcolors.appColors.shade200),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 5),
                Center(
                    child: ButtonWidget(
                        onPressed: () {
                          Get.toNamed(Appnames.newenquirysuccess);
                        },
                        text: 'Next',
                        width: MediaQuery.of(context).size.width / 2,
                        height: 46,
                        color: theme.splashColor))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
