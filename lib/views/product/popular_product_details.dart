import 'package:flutter/material.dart';
import 'package:shein_shine_out/styles/app_colors.dart';
import 'package:shein_shine_out/utils/dimensions.dart';
import 'package:shein_shine_out/widgets/app_action_icon.dart';
import 'package:shein_shine_out/widgets/collapsable_text.dart';
import 'package:shein_shine_out/widgets/product_header.dart';
import 'package:shein_shine_out/widgets/title_text.dart';

class PopularProductDetails extends StatelessWidget {
  const PopularProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.pageViewDetailContainer,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/shirt1.png")),
              ),
            ),
          ),
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppActionIcon(icon: Icons.arrow_back),
                AppActionIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
          ),
          Positioned(
            top: Dimensions.pageViewDetailContainer - Dimensions.height20,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductHeader(
                        title: "Sport T-Shirts",
                        titleSize: Dimensions.font32,
                        ratting: 4,
                        comments: 1455,
                        type: "Normal",
                        sizes: 5,
                        deliveryTime: "15days"),
                    SizedBox(
                      height: Dimensions.height30,
                    ),
                    TitleText(text: "Description"),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    const Expanded(
                      child: SingleChildScrollView(
                        child: CollapsibleText(
                            text:
                                "Un lot de trois t-shirts à col rond, signés BOSS. Ornés di un logo brodé sur le côté gauche de la poitrine, ces t-shirts Regular Fit sont confectionnés en jersey de pur coton offrant un confort naturel. Choisissez parmi trois couleurs différentes pour vos essentiels de tous les jours. \n\nRegular fit \nCol rond \nEmballage: Boîte \nLogo brodé"),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.height120,
        padding: EdgeInsets.only(
            top: Dimensions.height30,
            bottom: Dimensions.height30,
            left: Dimensions.width20,
            right: Dimensions.width20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimensions.radius20),
              topRight: Radius.circular(Dimensions.radius20)),
          color: AppColors.buttonBackgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height15,
                  bottom: Dimensions.height15,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                  SizedBox(
                    width: Dimensions.width10,
                  ),
                  TitleText(text: "0"),
                  SizedBox(
                    width: Dimensions.width10,
                  ),
                  const Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height15,
                  bottom: Dimensions.height15,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor,
              ),
              child: TitleText(
                text: "\$10 | Add to cart",
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
