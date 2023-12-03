import 'package:flutter/material.dart';
import 'package:shein_shine_out/ui/add_screen.dart';
import 'package:shein_shine_out/ui/cart_screen.dart';
import 'package:shein_shine_out/ui/home_screen.dart';
import 'package:shein_shine_out/ui/profile_screen.dart';
import 'package:shein_shine_out/ui/search_screen.dart';

Widget getWidgetByIndex(String itemAction) {
  switch (itemAction) {
    case "home":
      return const HomeScreen();
    case "search":
      return const SearchScreen();
    case "add":
      return const PlusScreen();
    case "cart":
      return const CartScreen();
    case "profile":
      return const ProfileScreen();
    default:
      return Container();
  }
}
