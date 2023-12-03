import 'package:flutter/material.dart';
import 'package:shein_shine_out/styles/global_styles.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE2E2E2),
      body: Center(
        child: Text(
          "Profile Screen",
          style: app_text_style(40, Colors.black, FontWeight.bold),
        ),
      ),
    );
  }
}
