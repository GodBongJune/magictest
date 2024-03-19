import 'package:church/core/constant/color.dart';
import 'package:church/core/constant/move.dart';
import 'package:church/core/constant/size.dart';
import 'package:flutter/material.dart';

class ChurchNewsPageBody extends StatelessWidget {
  ChurchNewsPageBody({Key? key});

  final List<Map<String, dynamic>> newsData = [
    {"image": "assets/images/news/news1.png", "date": "2023년 12월 24일"},
    {"image": "assets/images/news/news2.png", "date": "2023년 12월 17일"},
    {"image": "assets/images/news/news3.png", "date": "2023년 12월 10일"},
    {"image": "assets/images/news/news4.png", "date": "2023년 12월 3일"},
    {"image": "assets/images/news/news5.png", "date": "2023년 11월 26일"},
    {"image": "assets/images/news/news6.png", "date": "2023년 11월 19일"},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1.5 / 1.95,
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemCount: newsData.length,
            itemBuilder: (context, index) {
              return Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Move.churchNewsDetailPage);
                      },
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.23,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            newsData[index]["image"],
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      newsData[index]["date"],
                      style: TextStyle(
                        color: k3DColor,
                        fontSize: size14,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
