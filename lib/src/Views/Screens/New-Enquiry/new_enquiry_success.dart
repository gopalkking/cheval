import 'package:cheval/src/Views/Screens/Home/navigator.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/custom_button.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:flutter/material.dart';

class NewEnquirySuccess extends StatelessWidget {
  const NewEnquirySuccess({super.key});

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
            padding: const EdgeInsets.symmetric(vertical: 180),
            child: Center(
              child: Column(
                children: [
                  Text(
                    'Enquiry Submitted Successfully',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  25.vspace,
                  Image.asset(
                    Appimage.successthumb,
                    fit: BoxFit.cover,
                  ),
                  30.vspace,
                  SizedBox(
                      width: 250,
                      child: Text(
                        'Your enquiry will be forwarded to brokers and once brokers place a bid on your enquiry you will receive an notification about the same',
                        style: Theme.of(context).textTheme.bodyLarge,
                        textAlign: TextAlign.center,
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 5,
                  ),
                  ButtonWidget(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => NavigatorScreen(index: 1)));
                      },
                      text: 'Close',
                      width: MediaQuery.of(context).size.width / 2,
                      height: 46,
                      color: theme.splashColor)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
