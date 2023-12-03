import 'package:flutter/material.dart';

class BottomBarButton extends StatelessWidget {
  const BottomBarButton({
    super.key,
    this.childIcon,
    required this.onTap,
  });

  final void Function() onTap;
  final IconData? childIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: SizedBox(
        height: 36,
        width: 36,
        child: Icon(
          childIcon,
          color: Colors.white,
        ),
      ),
    );
  }
}
