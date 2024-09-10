import 'package:bottom_bar_matu/bottom_bar_matu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:radio_list/presentation/favorites_list/favorites_list_page.dart';
import 'package:radio_list/presentation/radio_list/radio_list_page.dart';
import 'package:radio_list/presentation/radio_player/radio_player.dart';
import 'package:radio_list/presentation/settings/settings_page.dart';
import 'package:radio_list/utils/string_keys.dart';

import '../../application/radio_player/radio_player_cubit.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with TickerProviderStateMixin {
  final RadioPlayerCubit radioPlayerCubit = GetIt.instance<RadioPlayerCubit>();
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    _tabController.index = 0;
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBarBubble(
        selectedIndex: _tabController.index,
        backgroundColor: Colors.transparent,
        color: Theme.of(context).appBarTheme.backgroundColor!,
        bubbleSize: 0,
        height: 65,
        items: [
          BottomBarItem(
            iconData: Icons.radio,
            label: StringKeys.radios,
            iconSize: 25,
            labelTextStyle: Theme.of(context).textTheme.bodySmall,
          ),
          BottomBarItem(
            iconData: Icons.workspace_premium,
            label: StringKeys.favorites,
            iconSize: 25,
            labelTextStyle: Theme.of(context).textTheme.bodySmall,
          ),
          BottomBarItem(
            iconData: Icons.settings,
            label: StringKeys.settings,
            iconSize: 25,
            labelTextStyle: Theme.of(context).textTheme.bodySmall,
          ),
        ],
        onSelect: (int value) {
          radioPlayerCubit.state.maybeWhen(
            full: (_, __) {
              radioPlayerCubit.toMinimized();
            },
            orElse: () {},
          );
          _tabController.index = value;
        },
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          TabBarView(
            controller: _tabController,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              RadioListPage(),
              const FavoritesListPage(),
              const SettingsPage(),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BlocBuilder<RadioPlayerCubit, RadioPlayerState>(
                builder: (context, state) {
              return state.maybeWhen(
                minimized: (radioSelected, _) => RadioPlayer(),
                full: (radioSelected, _) => RadioPlayer(),
                orElse: () => const SizedBox(),
              );
            }),
          ),
        ],
      ),
    );
  }
}
