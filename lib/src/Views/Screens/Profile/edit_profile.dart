import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/back_arrow_widget.dart';
import 'package:cheval/src/Views/widgets/custom_button.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:cheval/src/Views/widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController fullname = TextEditingController();
  TextEditingController companyname = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController gstin = TextEditingController();
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
            padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BackArrowWidget(
                  text: 'Edit Profile',
                  onTap: () {
                    Get.back();
                  },
                ),
                24.vspace,
                Row(
                  children: [
                    Text(
                      'FullName',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                    Text(
                      ' *',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: Colors.red,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                  ],
                ),
                Textformfieldwidget(textEditingController: fullname),
                16.vspace,
                Text(
                  'Company Name',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                ),
                Textformfieldwidget(textEditingController: companyname),
                16.vspace,
                Row(
                  children: [
                    Text(
                      'Email',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                    Text(
                      ' *',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: Colors.red,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                  ],
                ),
                Textformfieldwidget(textEditingController: email),
                16.vspace,
                Row(
                  children: [
                    Text(
                      'phone Number',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                    Text(
                      ' *',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: Colors.red,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                  ],
                ),
                Textformfieldwidget(textEditingController: phone),
                16.vspace,
                Text(
                  'Address',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                ),
                Textformfieldwidget(textEditingController: companyname),
                16.vspace,
                Text(
                  'GST IN',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                ),
                Textformfieldwidget(textEditingController: companyname),
                SizedBox(height: MediaQuery.of(context).size.height / 7.3),
                Center(
                    child: ButtonWidget(
                  text: 'Update',
                  width: MediaQuery.of(context).size.width / 1,
                  height: 55,
                  color: theme.splashColor,
                  onPressed: () {},
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
