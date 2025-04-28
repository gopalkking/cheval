import 'package:cheval/src/Views/Routes/routes_name.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/custom_button.dart';
import 'package:cheval/src/Views/widgets/phone_field_widget.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:cheval/src/Views/widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController companyname = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
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
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 48,horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Text('Register',style: Theme.of(context).textTheme.headlineSmall),
            34.vspace,
            Textformfieldwidget(textEditingController: companyname, 
            hinttext: 'Company name:'),
            24.vspace,
             PhoneNumberField(textEditingController: phone, hintText: '2034545812',),
            16.vspace,
            Textformfieldwidget(textEditingController: email, 
            hinttext: 'Email id:'),
            const Spacer(),
            Center(
              child: ButtonWidget(text: 'Next', width: MediaQuery.of(context).size.width / 1.6, 
              height: 55, color: theme.splashColor,
              onPressed: (){
                Get.toNamed(Appnames.signupOTP);
              },),
            )
            ],
          ),
        ),
      ),
    );
  }
}