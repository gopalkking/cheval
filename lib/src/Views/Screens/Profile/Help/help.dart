import 'package:cheval/src/Views/Routes/routes_name.dart';
import 'package:cheval/src/Views/Screens/Home/navigator.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/custom_button.dart';
import 'package:cheval/src/Views/widgets/help_widget.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      color: Appcolors.appColors.shade50,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NavigatorScreen(index: 2)));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        Appimage.down,
                        height: 30,
                        width: 20,
                      ),
                      Text(
                        'Help & Support',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
                16.vspace,
                Center(
                  child: ButtonWidget(
                    text: 'Raise A Ticket',
                    width: MediaQuery.of(context).size.width / 2,
                    height: 50,
                    color: theme.splashColor,
                    onPressed: () {
                      Get.toNamed(Appnames.helpraiseticket);
                    },
                  ),
                ),
                Divider(
                  thickness: 2,
                  color: Colors.white.withValues(alpha:0.75),
                ),
                8.vspace,
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Your Support Tickets',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.white.withValues(alpha: 0.75),
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16, left: 24, right: 24),
                  child: TextFormField(
                    controller: search,
                    onChanged: (value) {
                      setState(() {
                        // selectTicket = value.toLowerCase();
                      });
                    },
                    decoration: InputDecoration(
                      hintText: 'Search By Date/ Ticket #',
                      hintStyle: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: const Color(0xff04A0B0)),
                      filled: true,
                      fillColor: Colors.white,
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      )),
                      prefixIcon: Image.asset(
                        Appimage.search,
                        height: 32,
                        width: 32,
                      ),
                    ),
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: const Color(0xff04A0B0), fontSize: 18),
                  ),
                ),
                24.vspace,
                ListView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(0),
                    itemCount: 5,
                    physics:const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: HelpWidget(
                            text: "TicketId : 17896546C",
                            text1: 'Category : General',
                            text2: 'Date : 22/12/2024',
                            txt3: 'Status : ',
                            widget: Container(
                              padding: const EdgeInsets.all(6),
                              color: theme.splashColor,
                              child: Text(
                                'New Ticket',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        color: Appcolors.appColors.shade100),
                              ),
                            ),
                            button: SizedBox(
                              width: 120,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Appcolors.appColors.shade100,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8))),
                                  onPressed: () {
                                    Get.toNamed(Appnames.helpview);
                                  },
                                  child: Text(
                                    'View',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .copyWith(
                                            color: theme.splashColor,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14),
                                  )),
                            )),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
