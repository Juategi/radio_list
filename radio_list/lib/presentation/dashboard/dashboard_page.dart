import 'package:bottom_bar_matu/bottom_bar_matu.dart';
import 'package:flutter/material.dart';
import 'package:radio_list/presentation/radios/radio_list_page.dart';
import 'package:radio_list/utils/string_keys.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    _tabController.index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBarBubble(
        selectedIndex: _tabController.index,
        backgroundColor: Colors.transparent,
        color: Theme.of(context).primaryColor,
        bubbleSize: 0,
        items: [
          BottomBarItem(iconData: Icons.radio, label: StringKeys.radios),
          BottomBarItem(iconData: Icons.favorite, label: StringKeys.favorites),
          BottomBarItem(iconData: Icons.settings, label: StringKeys.settings),
        ],
        onSelect: (int value) {
          _tabController.index = value;
        },
      ),
      body: TabBarView(
        controller: _tabController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          RadioListPage(),
          SizedBox(),
          SizedBox(),
        ],
      ),
    );
  }
}
