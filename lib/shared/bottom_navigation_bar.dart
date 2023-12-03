import 'package:flutter/material.dart';
import 'package:shein_shine_out/shared/bottom_bar_button.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key, required this.onItemSelected, });

  final void Function(String item) onItemSelected;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BottomBarButton(
                    onTap: () => onItemSelected("home"),
                    childIcon: Icons.home,
                  ),
                  BottomBarButton(
                    onTap: () => onItemSelected("search"),
                    childIcon: Icons.search,
                  ),
                  BottomBarButton(
                    onTap: () => onItemSelected("add"),
                    childIcon: Icons.add,
                  ),
                  BottomBarButton(
                    onTap: () => onItemSelected("cart"),
                    childIcon: Icons.shopping_cart,
                  ),
                  BottomBarButton(
                    onTap: () => onItemSelected("profile"),
                    childIcon: Icons.person,
                  ),
                ],
              ),
            )));
  }
}
