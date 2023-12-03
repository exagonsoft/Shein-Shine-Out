import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shein_shine_out/constants/lists.dart';
import 'package:shein_shine_out/controllers/main_screen_provider.dart';
import 'package:shein_shine_out/shared/bottom_navigation_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(builder: (context, mainScreenNotifier, child) {
      return Scaffold(
        backgroundColor: const Color(0xFFE2E2E2),
        body: getWidgetByIndex(mainScreenNotifier.pageIndex),
        bottomNavigationBar: BottomBar(
          onItemSelected: (item) {
            mainScreenNotifier.pageIndex = item;
          },
        ),
      );
    });
  }
}
