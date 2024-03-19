import 'package:church/core/constant/color.dart';
import 'package:church/core/constant/size.dart';
import 'package:flutter/material.dart';

class ChurchNoticeDetailPageBody extends StatelessWidget {
  const ChurchNoticeDetailPageBody({super.key});

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
                "2023.12.10",
                style: TextStyle(color: kC8Color, fontSize: size12),
              ),
              SizedBox(height: 10),
              Text(
                "2023년 12월 24일",
                style: TextStyle(
                  color: k3DColor,
                  fontSize: size16,
                ),
              ),
              SizedBox(height: 5),
              Divider(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Container(
                child: Text(
                  "교회 소식 내용이 들어갈 위치입니다.폰트는 프리텐다드에 Regular고 폰트 사이즈는 16px 입니다. 컬러는 #767676을 사용하고 있습니다.이 부분은 앱 관리자가 ck 에디터로 작성할 부분입니다.이미지를 넣는 경우 아래와 같이 보입니다.",
                  style: TextStyle(
                    color: k76Color,
                    fontSize: size16,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Image.asset("assets/images/news/news6.png"),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            ],
          ),
        ),
      ],
    );
  }
}
