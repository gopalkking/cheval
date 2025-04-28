import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/back_arrow_widget.dart';
import 'package:cheval/src/Views/widgets/custom_button.dart';
import 'package:cheval/src/Views/widgets/customer_widget.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CustomerAddScreeen extends StatefulWidget {
  const CustomerAddScreeen({super.key});

  @override
  State<CustomerAddScreeen> createState() => _CustomerAddScreeenState();
}

class _CustomerAddScreeenState extends State<CustomerAddScreeen> {
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController person = TextEditingController();
  TextEditingController personPhone = TextEditingController();
  TextEditingController address1 = TextEditingController();
  TextEditingController address2 = TextEditingController();
  TextEditingController pincode = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController gstin = TextEditingController();
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
                BackArrowWidget(text: "Customer Management",onTap: (){
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
                //       'Customer Management',
                //       style: Theme.of(context).textTheme.headlineSmall,
                //     )
                //   ],
                // ),
                Text('Customer Details',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Theme.of(context).splashColor)),
                8.vspace,
                Text('Name', style: Theme.of(context).textTheme.bodyLarge),
                CustomerWidget(textEditingController: name),
                8.vspace,
                Text('Phone', style: Theme.of(context).textTheme.bodyLarge),
                IntlPhoneField(
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: Appcolors.appColors.shade100,
                      ),
                  textAlign: TextAlign.center,
                  controller: phone,
                  dropdownIcon: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                  ),
                  dropdownIconPosition: IconPosition.trailing,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(16),
                    border: OutlineInputBorder(
                        gapPadding: 2.0,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide(color: theme.splashColor)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(
                        color: theme.splashColor,
                        width: 2.0,
                      ),
                    ),
                    errorStyle: const TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                    ),
                    counterStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  initialCountryCode: 'IN',
                  onChanged: (phone) {},
                  validator: (value) {
                    if (value == null) {
                      return 'Please enter a phone number';
                    } else if (!value.isValidNumber()) {
                      return 'Please enter a valid phone number';
                    } else {
                      return null;
                    }
                  },
                ),
                8.vspace,
                Text('Email', style: Theme.of(context).textTheme.bodyLarge),
                CustomerWidget(textEditingController: email),
                8.vspace,
                Text('Contact Person', style: Theme.of(context).textTheme.bodyLarge),
                CustomerWidget(textEditingController: person),
                8.vspace,
                Text('GSTIN', style: Theme.of(context).textTheme.bodyLarge),
                CustomerWidget(textEditingController: gstin),
                // Text('Contact Person Phone', style: Theme.of(context).textTheme.bodyLarge),
                // CustomerWidget(textEditingController: personPhone),
                // 8.vspace,
                // Text('Address Line 1', style: Theme.of(context).textTheme.bodyLarge),
                // CustomerWidget(textEditingController: address1),
                                16.vspace,
                 Text('Location Details',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Theme.of(context).splashColor)),
                 8.vspace,
                Text('Address', style: Theme.of(context).textTheme.bodyLarge),
                CustomerWidget(textEditingController: address2),
                8.vspace,
                Text('Pincode', style: Theme.of(context).textTheme.bodyLarge),
                CustomerWidget(textEditingController: pincode),
                8.vspace,
                Text('City', style: Theme.of(context).textTheme.bodyLarge),
                CustomerWidget(textEditingController: city),
                8.vspace,
                Text('State', style: Theme.of(context).textTheme.bodyLarge),
                CustomerWidget(textEditingController: state),
              
                // 8.vspace,
                // Text('Type', style: Theme.of(context).textTheme.bodyLarge),
                // CustomerWidget(textEditingController: name),
                36.vspace,
                Center(
                  child: ButtonWidget(text: 'Save', 
                  width: MediaQuery.of(context).size.width / 2, height: 50, color: theme.splashColor,onPressed: (){},),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
