import 'package:flutter/material.dart';
import 'package:shein_shine_out/utils/dimensions.dart';
import 'package:shein_shine_out/widgets/card_footer_info.dart';
import 'package:shein_shine_out/widgets/description_text.dart';
import 'package:shein_shine_out/widgets/title_text.dart';

class PopularProductsListItem extends StatelessWidget {
  const PopularProductsListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: Dimensions.width120,
          height: Dimensions.height120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius20),
              color: Colors.white38,
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/shirt3.png"))),
        ),
        Expanded(
          child: Container(
            height: Dimensions.height100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius20),
                  bottomRight: Radius.circular(Dimensions.radius20)),
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.only(top: Dimensions.height5, left: Dimensions.width10, right: Dimensions.width10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleText(text: "Man's Sport T-Shirt"),
                  SizedBox(
                    height: Dimensions.height5,
                  ),
                  DescriptionText(text: "Sporting flexible T-Shirt for mans"),
                  SizedBox(
                    height: Dimensions.height10,
                  ),
                  const CardFooterInfo(type: "Normal, ", sizes: "5", deliveryTime: "15days",),
                ],
              ),
              ),
          ),
        ),
      ],
    );
  }
}
