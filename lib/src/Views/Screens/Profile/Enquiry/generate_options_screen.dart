import 'package:cheval/src/Views/Routes/routes_name.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/back_arrow_widget.dart';
import 'package:cheval/src/Views/widgets/custom_button.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:cheval/src/Views/widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GenerateOptionsScreen extends StatefulWidget {
  const GenerateOptionsScreen({super.key});

  @override
  State<GenerateOptionsScreen> createState() => _GenerateOptionsScreenState();
}

class _GenerateOptionsScreenState extends State<GenerateOptionsScreen> {
  TextEditingController name = TextEditingController();
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
            padding: const EdgeInsets.symmetric(vertical: 36,horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BackArrowWidget(text: 'Generate LR',onTap: (){
                  Get.back();
                },),
                16.vspace,
                Text('Name',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Appcolors.appColors.shade100
                ),),
                Textformfieldwidget(textEditingController: name),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 1.7,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ButtonWidget(text: 'Save to LR', width:  MediaQuery.of(context).size.width / 2.5, height: 60, color: theme.splashColor,onPressed: (){
                          Get.toNamed(Appnames.lrapprove);
                        },),
                        16.vspace,
                        ButtonWidget(text: 'Draft LR', width:  MediaQuery.of(context).size.width / 2.5, height: 60, color: theme.splashColor,onPressed: (){
                          Get.toNamed(Appnames.lrapprove);
                        },),
                      ],
                    ),
                      Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ButtonWidget(text: 'Save and add to my Customer list', width:  MediaQuery.of(context).size.width / 2.3, height: 60, color: theme.splashColor,onPressed: (){
                          Get.toNamed(Appnames.lrapprove);
                        },),
                        16.vspace,
                        ButtonWidget(text: 'Generate LR', width: MediaQuery.of(context).size.width / 2.3, height: 60, color: theme.splashColor,onPressed: (){
                          Get.toNamed(Appnames.lrapprove);
                        },),
                      ],
                    ),

                    
                    

                  ],
                )            

              ],
            ),
          ),
        ),
      ),
    );
  }
}