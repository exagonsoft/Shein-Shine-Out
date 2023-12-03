import 'package:flutter/material.dart';
import 'package:shein_shine_out/utils/dimensions.dart';

// ignore: must_be_immutable
class TitleText extends StatelessWidget {
  Color? color;
  final String text;
  double? size;
  TextOverflow overFlow;
  TitleText(
      {Key? key,
      this.color = const Color(0xFF332d2b),
      required this.text,
      this.size = 20,
      this.overFlow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overFlow,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
        fontSize: size==0? Dimensions.font20 : size,
      ),
    );
  }
}
