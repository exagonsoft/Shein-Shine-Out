import 'package:flutter/material.dart';
import 'package:shein_shine_out/styles/global_styles.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE2E2E2),
      body: Center(
        child: Text(
          "Search Screen",
          style: app_text_style(40, Colors.black, FontWeight.bold),
        ),
      ),
    );
  }
}
