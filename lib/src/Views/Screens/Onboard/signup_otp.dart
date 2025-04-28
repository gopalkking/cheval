import 'package:cheval/src/Views/Routes/routes_name.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/custom_button.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class SignupOtp extends StatefulWidget {
  const SignupOtp({super.key});

  @override
  State<SignupOtp> createState() => _SignupOtpState();
}

class _SignupOtpState extends State<SignupOtp> {
  final pinputController = TextEditingController();
  final focusNode = FocusNode();
  
  @override
  Widget build(BuildContext context) {
     final defaultPinTheme = PinTheme(
      width: 66,
      height: 66,
      textStyle: const TextStyle(
        fontSize: 24,
        color: Colors.white,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff00ADBF), width: 2),
        borderRadius: BorderRadius.circular(8)
      ),
    );
    const focusedBorderColor = Color(0xff00ADBF);
     ThemeData theme = Theme.of(context);
    return Container(
            decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage(Appimage.map),
          alignment: Alignment.bottomCenter,
        ),
        color: Appcolors.appColors.shade50,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 48,horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Text('Phone Verification',style: Theme.of(context).textTheme.headlineSmall),
          24.vspace,
          Material(
            color: Colors.transparent,
            child: Pinput(
                      controller: pinputController,
                      focusNode: focusNode,
                      length: 6,
                      defaultPinTheme: defaultPinTheme,
                      focusedPinTheme: defaultPinTheme.copyWith(
                        decoration: defaultPinTheme.decoration!.copyWith(
                          border: Border.all(color: focusedBorderColor),
                        ),
                      ),
                      submittedPinTheme: defaultPinTheme.copyWith(
                        decoration: defaultPinTheme.decoration!.copyWith(
                          color: Colors.transparent,
                          border: Border.all(color: focusedBorderColor),
                        ),
                      ),
                      errorPinTheme: defaultPinTheme.copyBorderWith(
                        border: Border.all(color: Colors.redAccent),
                      ),
                      onSubmitted: (value) {
                      },
                    ),
          ),
          28.vspace,
          Center(child: Text('We have sent you an OTP (one time password) to your phone number',
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.center,)),
          48.vspace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Resend OTP',style: Theme.of(context).textTheme.bodyLarge),
               Text('90 sec',style: Theme.of(context).textTheme.bodyLarge)
            ],
          ),
          36.vspace,
          Text('Change Phone Number',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: Colors.white,
            fontSize: 21
          )),
        const Spacer(),
         Center(child: ButtonWidget(text: 'Next', width: MediaQuery.of(context).size.width / 1.6, height: 55,
         color:theme.splashColor,
         onPressed: (){
          Get.toNamed(Appnames.emailOTP);
         },)),
         24.vspace,
          ],
        ),
      ),
    );
  }
}