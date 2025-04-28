import 'package:cheval/src/Views/Screens/Profile/Report%20Analytics/booking_report.dart';
import 'package:cheval/src/Views/Screens/Profile/Report%20Analytics/revenue_report.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/back_arrow_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReportAnalyticsTabs extends StatefulWidget {
  const ReportAnalyticsTabs({super.key});

  @override
  State<ReportAnalyticsTabs> createState() => _ReportAnalyticsTabsState();
}

class _ReportAnalyticsTabsState extends State<ReportAnalyticsTabs>
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

  List<String> tabs = ['Revenue Report', 'Booking Report'];
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
                  text: 'Report & Analytics',
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
                          RevenueReport(),
                          BookingReport(),
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
