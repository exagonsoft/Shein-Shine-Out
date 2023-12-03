import 'package:flutter/material.dart';
import 'package:shein_shine_out/styles/app_colors.dart';
import 'package:shein_shine_out/utils/dimensions.dart';
import 'package:shein_shine_out/widgets/description_text.dart';

class CardFooterInfo extends StatelessWidget {
  final String? type;
  final String sizes;
  final String deliveryTime;
  const CardFooterInfo({super.key, required this.type, required this.sizes, required this.deliveryTime});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              Icons.circle_sharp ,
              color: AppColors.iconColor1,
              size: Dimensions.font24,
            ),
            DescriptionText(text: type ?? "Normal", size: Dimensions.font12),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.type_specimen_sharp,
              color: AppColors.mainColor,
              size: Dimensions.font24,
            ),
            DescriptionText(text: sizes, size: Dimensions.font12)
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.timer_sharp,
              color: AppColors.iconColor2,
              size: Dimensions.font24,
            ),
            DescriptionText(text: deliveryTime, size: Dimensions.font12)
          ],
        ),
      ],
    );
  }
}
