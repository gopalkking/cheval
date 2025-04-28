import 'package:cheval/src/Views/Screens/Profile/Shipment/shipment_management.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShipmentManagementTabs extends StatefulWidget {
  const ShipmentManagementTabs({super.key});

  @override
  State<ShipmentManagementTabs> createState() => _ShipmentManagementTabsState();
}

class _ShipmentManagementTabsState extends State<ShipmentManagementTabs>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<String> tabs = ['All', 'In Progress', 'Completed'];
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
              padding: const EdgeInsets.only(top: 38),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: const Icon(
                            Icons.arrow_left_outlined,
                            size: 50,
                            color: Colors.white,
                          )),
                      Text('Shipment Management',
                          style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                10.vspace,
                  TabBar(
                    controller: _tabController,
                    indicatorColor: theme.splashColor,
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
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: const [
                        ShipmentManagement(),
                        ShipmentManagement(),
                        ShipmentManagement(),
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
