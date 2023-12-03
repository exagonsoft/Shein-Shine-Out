import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shein_shine_out/styles/global_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late final TabController _mainTabController =
      TabController(length: 3, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFE2E2E2),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(16, 45, 0, 0),
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/top_logo.png"),
                        fit: BoxFit.fill)),
                child: Container(
                  padding: const EdgeInsets.only(left: 8, bottom: 15, top: 15),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("SheinShineOut",
                          style: app_text_style_with_height(
                              36, Colors.white, FontWeight.bold, 1.5)),
                      Text("Collection",
                          style: app_text_style_with_height(
                              36, Colors.white, FontWeight.bold, 1.2)),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: TabBar(
                            indicatorSize: TabBarIndicatorSize.label,
                            indicatorColor: Colors.transparent,
                            controller: _mainTabController,
                            isScrollable: true,
                            labelColor: Colors.white,
                            labelStyle: app_text_style(
                                24, Colors.white, FontWeight.bold),
                            unselectedLabelColor: Colors.grey.withOpacity(.3),
                            tabs: const [
                              Tab(
                                text: "Man Articles",
                              ),
                              Tab(
                                text: "Women Articles",
                              ),
                              Tab(
                                text: "Kids Articles",
                              ),
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.265),
                child: Container(
                  padding: const EdgeInsets.only(left: 12),
                  child: TabBarView(controller: _mainTabController, children: [
                    Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .405,
                          child: ListView.builder(
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  color: Colors.grey,
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width * .6,
                                ),
                              );
                            },
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(12, 20, 12, 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Latest Articles",
                                    style: app_text_style(
                                        24, Colors.black, FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Show All",
                                        style: app_text_style(
                                            22, Colors.black, FontWeight.w500),
                                      ),
                                      const Icon(
                                        Icons.arrow_right,
                                        size: 30,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .13,
                          child: ListView.builder(
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(16)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black38,
                                        blurRadius: .8,
                                        offset: Offset(0, 1)
                                      )
                                    ]
                                  ),
                                  height: MediaQuery.of(context).size.height*.12,
                                  width: MediaQuery.of(context).size.width * .28,
                                  child: CachedNetworkImage(imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwt_fr4a4xIRumcpe2f6friyI6XNQBnqu73p69x678xPlcUdgJ0hh0wGXpzBislpJSnXQ&usqp=CAU",),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * .405,
                          color: Colors.green,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * .405,
                          color: Colors.blue,
                        )
                      ],
                    )
                  ]),
                ),
              )
            ],
          ),
        ));
  }
}
