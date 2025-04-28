import 'package:cheval/src/Views/Routes/routes_name.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/phone_field_widget.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
          decoration:  BoxDecoration(
        image: const DecorationImage(
            image: AssetImage(Appimage.map),
            alignment: Alignment.bottomCenter,
            fit: BoxFit.contain),
             color: Appcolors.appColors.shade50,
            ),
        child:Padding(
          padding: const EdgeInsets.symmetric(vertical: 36,horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                 Image.asset(Appimage.unitedstates,height: 26,width: 26,fit: BoxFit.fill,),
              4.hspace,
              Text('English',style: Theme.of(context).textTheme.bodyMedium),
              4.hspace,
              Image.asset(Appimage.click,height: 16,width: 16,)
              ],
            ),
            28.vspace,
            Center(child: Image.asset(Appimage.logo,height: 80,width:MediaQuery.of(context).size.width,fit: BoxFit.fill,)),
            28.vspace,
            Center(child: Text('Welcome',style: Theme.of(context).textTheme.displaySmall,)),
            46.vspace,
            Text('Enter Phone No',style: Theme.of(context).textTheme.titleSmall,),
            16.vspace,
            PhoneNumberField(textEditingController: phone, hintText: '2034545812',),
            16.vspace,
            SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Appcolors.appColors.shade100,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: (){
                  Get.toNamed(Appnames.loginOTP);
                }, 
                child: Text('Continue',style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: theme.splashColor
                ),)),
            ),
            28.vspace,
            Text('Don’t have an account?',style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: Appcolors.appColors.shade100,
            ),),
            16.vspace,
            InkWell(
              onTap: (){
                Get.toNamed(Appnames.signup);
              },
              child: Text('Sign up',style: Theme.of(context).textTheme.headlineSmall,))
            ],
          ),
        ),
      ),
    );
  }
}