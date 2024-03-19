import 'package:church/core/constant/color.dart';
import 'package:church/core/constant/size.dart';
import 'package:flutter/material.dart';

class ChurchNewsDetailPageBody extends StatelessWidget {
  const ChurchNewsDetailPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "교회주보",
                style: TextStyle(color: k9DColor, fontSize: size12),
              ),
              SizedBox(height: 5),
              Text(
                "2023년 12월 24일",
                style: TextStyle(
                  color: k3DColor,
                  fontSize: size16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Text(
                "2023.12.24",
                style: TextStyle(
                  color: k9DColor,
                  fontSize: size12,
                ),
              ),
            ],
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.asset("assets/images/news/news6.png"),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.1),
      ],
    );
  }
}
