import 'package:flutter/material.dart';
import 'package:shein_shine_out/styles/app_colors.dart';
import 'package:shein_shine_out/utils/dimensions.dart';
import 'package:shein_shine_out/widgets/app_action_icon.dart';
import 'package:shein_shine_out/widgets/collapsable_text.dart';
import 'package:shein_shine_out/widgets/title_text.dart';

class RecommendedProductDetail extends StatelessWidget {
  const RecommendedProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: Dimensions.height80,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppActionIcon(icon: Icons.close_outlined),
                AppActionIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(Dimensions.height20),
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.all(Dimensions.height10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20),
                    ),
                    color: Colors.white,
                  ),
                  child:
                      Center(child: TitleText(text: "Man's Sporting T-Shirt")),
                )),
            pinned: true,
            backgroundColor: AppColors.mellon,
            expandedHeight: Dimensions.height300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/shirt3.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(
                        left: Dimensions.width20, right: Dimensions.width20),
                    padding: EdgeInsets.only(top: Dimensions.height15),
                    child: CollapsibleText(
                        featuredHeight: Dimensions.screenHeight / 1.3,
                        text:
                            "Un lot de trois t-shirts à col rond, signés BOSS. Ornés di un logo brodé sur le côté gauche de la poitrine, ces t-shirts Regular Fit sont confectionnés en jersey de pur coton offrant un confort naturel. Choisissez parmi trois couleurs différentes pour vos essentiels de tous les jours. \n\nRegular fit \nCol rond \nEmballage: Boîte \nLogo brodé Un lot de trois t-shirts à col rond, signés BOSS. Ornés di un logo brodé sur le côté gauche de la poitrine, ces t-shirts Regular Fit sont confectionnés en jersey de pur coton offrant un confort naturel. Choisissez parmi trois couleurs différentes pour vos essentiels de tous les jours. \n\nRegular fit \nCol rond \nEmballage: Boîte \nLogo brodé Un lot de trois t-shirts à col rond, signés BOSS. Ornés di un logo brodé sur le côté gauche de la poitrine, ces t-shirts Regular Fit sont confectionnés en jersey de pur coton offrant un confort naturel. Choisissez parmi trois couleurs différentes pour vos essentiels de tous les jours. \n\nRegular fit \nCol rond \nEmballage: Boîte \nLogo brodé Un lot de trois t-shirts à col rond, signés BOSS. Ornés di un logo brodé sur le côté gauche de la poitrine, ces t-shirts Regular Fit sont confectionnés en jersey de pur coton offrant un confort naturel. Choisissez parmi trois couleurs différentes pour vos essentiels de tous les jours. \n\nRegular fit \nCol rond \nEmballage: Boîte \nLogo brodé Un lot de trois t-shirts à col rond, signés BOSS. Ornés di un logo brodé sur le côté gauche de la poitrine, ces t-shirts Regular Fit sont confectionnés en jersey de pur coton offrant un confort naturel. Choisissez parmi trois couleurs différentes pour vos essentiels de tous les jours. \n\nRegular fit \nCol rond \nEmballage: Boîte \nLogo brodé")),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20 * 2.5,
                right: Dimensions.width20 * 2.5,
                top: Dimensions.height10,
                bottom: Dimensions.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppActionIcon(
                  icon: Icons.remove,
                  bgColor: AppColors.mainColor,
                  iconColor: Colors.white,
                  iconSize: Dimensions.font24,
                ),
                TitleText(
                  text: "\$12.88" + " X " + "0",
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font24,
                ),
                AppActionIcon(
                  icon: Icons.add,
                  bgColor: AppColors.mainColor,
                  iconColor: Colors.white,
                  iconSize: Dimensions.font24,
                ),
              ],
            ),
          ),
          Container(
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
                  child: const Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
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
        ],
      ),
    );
  }
}