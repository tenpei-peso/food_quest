import 'package:flutter/material.dart';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_quest/presentation/screen/comming_soon_screen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:navigator_scope/navigator_scope.dart';

import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/screen/home_screen/home_screen.dart';
import 'package:food_quest/presentation/screen/pet/pet_screen.dart';
import 'package:food_quest/presentation/screen/profile_screen/profile_screen.dart';
import 'package:food_quest/presentation/screen/setting_screen/setting_screen.dart';

class BottomNavigationScreen extends HookConsumerWidget {
  const BottomNavigationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottomNavIndex = useState<int>(0);
    //フローティングボタンをからpushするとボトムバー消えてしまう
    final isPushFloating = useState(true);

    //ボトムバーに並べるアイコンのリスト
    final iconList = <IconData>[
      Icons.person,
      Icons.help,
      Icons.pets,
      Icons.settings,
    ];

    //真ん中を除くページのリスト
    final pageList = [
      const ProfileScreen(),
      const ComingSoonScreen(),
      const PetScreen(),
      const SettingScreen(),
    ];

    return Scaffold(
      extendBody: true,
      body: NavigatorScope(
        // A hub of local navigators
        currentDestination: bottomNavIndex.value,
        destinationCount: iconList.length,
        destinationBuilder: (context, index) {
          return NestedNavigator(
            builder: (context) =>
                isPushFloating.value ? const HomeScreen() : pageList[index],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.primaryColor,
        child: const Icon(
          Icons.list,
          // color: Colors.orangeAccent,
        ),
        onPressed: () {
          isPushFloating.value = true;
        },
        //params
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: iconList.length,
        backgroundColor: Colors.white,
        activeIndex: bottomNavIndex.value,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        splashColor: Colors.orangeAccent,
        splashSpeedInMilliseconds: 300,
        onTap: (index) {
          //選択したindexをstateに反映
          isPushFloating.value = false;
          bottomNavIndex.value = index;
        },
        tabBuilder: (int index, bool isActive) {
          final color =
              isActive && !isPushFloating.value ? Colors.orange : Colors.grey;
          return Icon(
            iconList[index],
            size: 32,
            color: color,
          );
        },
      ),
    );
  }
}
