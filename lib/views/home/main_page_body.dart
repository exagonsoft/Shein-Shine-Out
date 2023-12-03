import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:shein_shine_out/components/MainPageBodyComponents/popular_products_list_item.dart';
import 'package:shein_shine_out/styles/app_colors.dart';
import 'package:shein_shine_out/utils/dimensions.dart';
import 'package:shein_shine_out/widgets/description_text.dart';
import 'package:shein_shine_out/widgets/product_header.dart';
import 'package:shein_shine_out/widgets/title_text.dart';

class MainPageBody extends StatefulWidget {
  const MainPageBody({super.key});

  @override
  State<MainPageBody> createState() => _MainPageBodyState();
}

class _MainPageBodyState extends State<MainPageBody> {
  PageController mainBodyController = PageController(viewportFraction: .85);
  var _currentPageValue = 0.0;
  final double _scaleFactor = 0.8;
  final double _height = Dimensions.pageViewContainer;

  @override
  void initState() {
    super.initState();
    mainBodyController.addListener(() {
      setState(() {
        _currentPageValue = mainBodyController.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    mainBodyController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Slider Section
        Container(
          height: Dimensions.pageViewOuterContainer,
          child: PageView.builder(
              controller: mainBodyController,
              itemCount: 5,
              itemBuilder: (context, indexPosition) {
                return _pageItemBuilder(indexPosition);
              }),
        ),
        //Dots Indicator
        DotsIndicator(
          dotsCount: 5,
          position: _currentPageValue.floor(),
          decorator: DotsDecorator(
            activeColor: AppColors.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Dimensions.radius5)),
          ),
        ),
        //Popular Products
        SizedBox(
          height: Dimensions.height30,
        ),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TitleText(text: "Popular"),
              SizedBox(
                width: Dimensions.width10,
              ),
              Container(margin: const EdgeInsets.only(bottom: 3),
                child: TitleText(text: ".")
                ),
              SizedBox(
                width: Dimensions.width10,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: DescriptionText(text: "Products pairing")
              ),
            ],
          ),
        ),
        ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.only(top: Dimensions.height30),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) => (
              Container(
                margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, bottom: Dimensions.height10),
                child: const PopularProductsListItem(),
              )
            )),
      ],
    );
  }

  Widget _pageItemBuilder(int index) {
    Matrix4 cardMatrix = Matrix4.identity();

    if (index == _currentPageValue.floor()) {
      var currentScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currentTransition = _height * (1 - currentScale) / 2;
      cardMatrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTransition, 0);
    } else if (index == _currentPageValue.floor() + 1) {
      var currentScale =
          _scaleFactor + (_currentPageValue - index + 1) * (1 - _scaleFactor);
      var currentTransition = _height * (1 - currentScale) / 2;
      cardMatrix = Matrix4.diagonal3Values(1, currentScale, 1);
      cardMatrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTransition, 0);
    } else if (index == _currentPageValue.floor() - 1) {
      var currentScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currentTransition = _height * (1 - currentScale) / 2;
      cardMatrix = Matrix4.diagonal3Values(1, currentScale, 1);
      cardMatrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTransition, 0);
    } else {
      var currentScale = 0.8;
      cardMatrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }

    return Transform(
      transform: cardMatrix,
      child: Stack(
        children: [
          Container(
            height: Dimensions.pageViewContainer,
            margin: EdgeInsets.only(
                left: Dimensions.width10, right: Dimensions.width10),
            padding: EdgeInsets.only(top: Dimensions.height5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius30),
                color:
                    index.isEven ? AppColors.yellowColor : AppColors.paraColor,
                image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/shirt1.png"))),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(
                  left: Dimensions.width30,
                  right: Dimensions.width30,
                  bottom: Dimensions.height30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFFe8e8e8),
                    blurRadius: 5.0,
                    offset: Offset(0, 5),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, 0),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(5, 0),
                  ),
                ],
              ),
              child: Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height15,
                    left: Dimensions.width15,
                    right: Dimensions.width15),
                child: const ProductHeader(title: "Sport T-Shirts", ratting: 4, comments: 1425, type: "Normal", sizes: 7, deliveryTime: "15days")
              ),
            ),
          ),
        ],
      ),
    );
  }
}
