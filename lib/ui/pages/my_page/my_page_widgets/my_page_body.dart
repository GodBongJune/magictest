import 'package:church/core/constant/color.dart';
import 'package:church/core/constant/move.dart';
import 'package:church/core/constant/size.dart';
import 'package:church/ui/pages/login_page/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyPageBody extends StatelessWidget {
  const MyPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              color: k3DColor,
            ),
            Positioned(
              left: 16,
              bottom: 30,
              child: Text(
                "엠바스 님",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: size20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, Move.myInfoPage);
          },
          child: Container(
            height: MediaQuery.of(context).size.height * 0.07,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.person,
                    color: k3DColor,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "내정보 관리",
                    style: TextStyle(
                      color: k3DColor,
                      fontSize: size14,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Divider(),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, Move.qnaPage);
          },
          child: Container(
            height: MediaQuery.of(context).size.height * 0.06,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  Icon(
                    Icons.question_answer_outlined,
                    color: k3DColor,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "건의함",
                    style: TextStyle(
                      color: k3DColor,
                      fontSize: size14,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Divider(),
        InkWell(
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(
                context, Move.loginPage, (route) => false);
          },
          child: Container(
            height: MediaQuery.of(context).size.height * 0.06,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  Icon(
                    Icons.logout,
                    color: k3DColor,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "로그아웃",
                    style: TextStyle(
                      color: k3DColor,
                      fontSize: size14,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Divider(),
      ],
    );
  }
}
