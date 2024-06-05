import 'package:church/core/constant/color.dart';
import 'package:church/core/constant/move.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constant/size.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  List<Map<String, dynamic>> homeList = [
    {
      "title": "교회 일정",
      "image": "assets/images/homelogo/home4.svg",
      "route": Move.churchCalendarPage
    },
    {
      "title": "교회 소식",
      "image": "assets/images/homelogo/home5.svg",
      "route": Move.churchNoticePage
    },
    {
      "title": "교회 소개",
      "image": "assets/images/homelogo/home8.svg",
      "route": Move.churchInfoPage
    },
  ];

  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kFAColor,
      child: ListView(
        children: [
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height * 0.23,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 30, 16, 30),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  PageView.builder(
                    controller: _pageController,
                    itemCount: 3,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(CupertinoIcons.chat_bubble_text),
                                SizedBox(width: 10),
                                Text(
                                  "교회 소식",
                                  style: TextStyle(
                                    color: k3DColor,
                                    fontSize: size16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                            Container(
                              child: Text(
                                "안녕하세요.이것은 공지글 입니다. 폰트는 프리텐다드 레귤러이고 폰트크기는 14px 입니다.",
                                style: TextStyle(
                                  color: k3DColor,
                                  fontSize: size14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: List.generate(
                      3,
                      (index) => Container(
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: index == _currentPage
                              ? Colors.black
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                // crossAxisSpacing: ,
                childAspectRatio: 1.8 / 1.15,
              ),
              itemCount: homeList.length,
              itemBuilder: (context, index) {
                return buildGridItem(index);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildGridItem(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          if (homeList[index]["route"] != "") {
            // Navigate to the specified route
            Navigator.pushNamed(context, homeList[index]["route"]);
          }
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.13,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 14, top: 14),
                child: Text(
                  homeList[index]["title"],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: k3DColor,
                    fontSize: size14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset(
                      homeList[index]["image"],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
