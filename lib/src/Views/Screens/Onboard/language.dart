import 'package:cheval/src/Views/Routes/routes_name.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
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
        child: Padding(
          padding:const EdgeInsets.symmetric(vertical: 48,horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             Text('Change Language',style: Theme.of(context).textTheme.headlineSmall),
             36.vspace,
             InkWell(
              onTap: (){
                Get.toNamed(Appnames.login);
              },
               child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Image.asset(Appimage.unitedstates,height: 56,width: 56,fit: BoxFit.fill,),
                16.hspace,
                Text('English',style: Theme.of(context).textTheme.titleSmall),
                16.hspace,
                Image.asset(Appimage.click,height: 26,width: 26,)
                ],
               ),
             ),
             16.vspace,
             InkWell(
              onTap: (){
                Get.toNamed(Appnames.login);
              },
               child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Image.asset(Appimage.india,height: 56,width: 56,fit: BoxFit.fill,),
                16.hspace,
                Text('Hindi',style: Theme.of(context).textTheme.titleSmall),
                ],
               ),
             ),
             16.vspace,
             InkWell(
              onTap: (){
                Get.toNamed(Appnames.login);
              },
               child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Image.asset(Appimage.india,height: 56,width: 56,fit: BoxFit.fill,),
                16.hspace,
                Text('Marathi',style: Theme.of(context).textTheme.titleSmall),
                ],
               ),
             ),

            ],
          ),
        ),
      ),
    );
  }
}