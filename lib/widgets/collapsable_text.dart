import 'package:flutter/material.dart';
import 'package:shein_shine_out/styles/app_colors.dart';
import 'package:shein_shine_out/utils/dimensions.dart';
import 'package:shein_shine_out/widgets/description_text.dart';

class CollapsibleText extends StatefulWidget {
  final String text;
  final double? featuredHeight;
  const CollapsibleText({super.key, required this.text, this.featuredHeight});

  @override
  State<CollapsibleText> createState() => _CollapsibleTextState();
}

class _CollapsibleTextState extends State<CollapsibleText> {
  late String featuredText;
  late String restOfText;

  bool hiddenText = true;
  double textHeigh = Dimensions.screenHeight / 5.63;

  @override
  void initState() {
    super.initState();
    if (widget.featuredHeight == null) {
      if (widget.text.length > textHeigh) {
        featuredText = widget.text.substring(0, textHeigh.toInt());
        restOfText =
            widget.text.substring(textHeigh.toInt() + 1, widget.text.length);
      } else {
        featuredText = widget.text;
        restOfText = "";
      }
    } else {
      textHeigh = widget.featuredHeight!;
      if (widget.text.length > textHeigh) {
        featuredText = widget.text.substring(0, textHeigh.toInt());
        restOfText =
            widget.text.substring(textHeigh.toInt() + 1, widget.text.length);
      } else {
        featuredText = widget.text;
        restOfText = "";
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: restOfText.isEmpty
          ? DescriptionText(text: featuredText)
          : Column(
              children: [
                DescriptionText(
                    text: hiddenText
                        ? ("$featuredText...")
                        : (featuredText + restOfText)),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      DescriptionText(
                        text: (hiddenText ? "Show more" : "Show less"),
                        color: AppColors.mainColor,
                      ),
                      Icon(
                        (hiddenText
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up),
                        color: AppColors.mainColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
