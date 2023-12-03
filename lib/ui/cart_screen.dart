import 'package:flutter/material.dart';
import 'package:shein_shine_out/styles/global_styles.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE2E2E2),
      body: Center(
        child: Text(
          "Cart Screen",
          style: app_text_style(40, Colors.black, FontWeight.bold),
        ),
      ),
    );
  }
}
