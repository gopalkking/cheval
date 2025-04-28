import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/back_arrow_widget.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TermsOfServices extends StatelessWidget {
  const TermsOfServices({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
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
                   padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 16),
          child: Column(
            children: [
                 BackArrowWidget(
                      text: 'Terms of Services',
                      onTap: () {
                        Get.back();
                      },
                    ),
                    24.vspace,
              Container(
                    padding: const EdgeInsets.all(14),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.black),
                              child: Text('Lorem ipsum dolor sit amet consectetur, adipisicing elit. At adipisci ipsam praesentium officiis laboriosam quas magnam, fuga eius officia pariatur! Facilis velit aut, nostrum consectetur ratione ipsum officiis est architecto, nam, hic deleniti magni doloremque exercitationem! Officiis quod obcaecati provident nisi dolorem pariatur? Quis, dolores. Iste, impedit doloremque. Aperiam quibusdam delectus ratione. Accusantium accusamus architecto minima? Suscipit possimus magni, temporibus rem vel labore, corporis officiis, atque neque esse minima. Modi error optio consectetur ab nihil, totam natus, provident repudiandae voluptas deserunt ipsa officiis? Unde aut voluptatem aliquid, vero quasi repudiandae id tempora cumque totam ipsa vel praesentium ipsum, adipisci, rerum quis dolor asperiores. Voluptas, obcaecati neque consectetur, doloribus accusantium soluta dolorem suscipit culpa quod nam at. Qui iusto odio eum tenetur eligendi',style: Theme.of(context).textTheme.bodyLarge,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}