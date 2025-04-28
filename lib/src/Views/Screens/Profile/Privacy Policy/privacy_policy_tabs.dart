import 'package:cheval/src/Views/Screens/Profile/Privacy%20Policy/billing_policy.dart';
import 'package:cheval/src/Views/Screens/Profile/Privacy%20Policy/cancellation_policy.dart';
import 'package:cheval/src/Views/Screens/Profile/Privacy%20Policy/privacy_policy.dart';
import 'package:cheval/src/Views/Screens/Profile/Privacy%20Policy/refund_policy.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/back_arrow_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrivacyPolicyTabs extends StatefulWidget {
  const PrivacyPolicyTabs({super.key});

  @override
  State<PrivacyPolicyTabs> createState() => _PrivacyPolicyTabsState();
}

class _PrivacyPolicyTabsState extends State<PrivacyPolicyTabs>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<String> tabs = ['Privacy Policy', 'Billing Policy','Refund Policy','Cancellation Policy'];
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
         padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 6),
          child: Column(
            children: [
              BackArrowWidget(
                  text: 'Privacy Policy',
                  onTap: () {
                    Get.back();
                  },
                ),
              TabBar(
                        controller: _tabController,
                        indicatorColor: theme.splashColor,
                        dividerColor: Colors.transparent,
                        tabs: List.generate(
                          tabs.length,
                          (index) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text(
                              tabs[index],
                              style: theme.textTheme.headlineSmall!.copyWith(
                                  color: _tabController.index == index
                                      ? theme.splashColor
                                      : Colors.white,
                                  fontSize: 20),
                                  textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                       Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: const [
                          PrivacyPolicy(),
                          BillingPolicy(),
                          RefundPolicy(),
                          CancellationPolicy()
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
