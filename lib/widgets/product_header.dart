import 'package:flutter/material.dart';
import 'package:shein_shine_out/styles/app_colors.dart';
import 'package:shein_shine_out/utils/dimensions.dart';
import 'package:shein_shine_out/widgets/card_footer_info.dart';
import 'package:shein_shine_out/widgets/description_text.dart';
import 'package:shein_shine_out/widgets/title_text.dart';

class ProductHeader extends StatelessWidget {
  final String title;
  final double? titleSize;
  final int ratting;
  final int comments;
  final String? type;
  final int? sizes;
  final String deliveryTime;
  const ProductHeader(
      {super.key,
      required this.title,
      required this.ratting,
      required this.comments,
      required this.type,
      required this.sizes,
      required this.deliveryTime, this.titleSize});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(
          text: title,
          size: titleSize==0? Dimensions.font20 : titleSize,
        ),
        SizedBox(
          height: Dimensions.height5,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(
                  ratting,
                  (index) => const Icon(
                        Icons.star,
                        color: AppColors.mainColor,
                        size: 14,
                      )),
            ),
            const SizedBox(
              width: 5,
            ),
            DescriptionText(
              text: ratting.toString(),
              size: Dimensions.font12,
            ),
            const SizedBox(
              width: 5,
            ),
            DescriptionText(
              text: comments.toString(),
              size: Dimensions.font12,
            ),
            const SizedBox(
              width: 5,
            ),
            DescriptionText(
              text: "comments",
              size: Dimensions.font12,
            ),
          ],
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        CardFooterInfo(
            type: type ?? "Normal",
            sizes: sizes.toString(),
            deliveryTime: deliveryTime),
      ],
    );
  }
}
