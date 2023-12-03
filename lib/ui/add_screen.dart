import 'package:flutter/material.dart';
import 'package:shein_shine_out/styles/global_styles.dart';

class PlusScreen extends StatefulWidget {
  const PlusScreen({super.key});

  @override
  State<PlusScreen> createState() => _PlusScreenState();
}

class _PlusScreenState extends State<PlusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE2E2E2),
      body: Center(
        child: Text(
          "Plus Screen",
          style: app_text_style(40, Colors.black, FontWeight.bold),
        ),
      ),
    );
  }
}
