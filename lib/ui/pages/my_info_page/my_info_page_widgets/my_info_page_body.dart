import 'package:church/core/constant/color.dart';
import 'package:church/core/constant/move.dart';
import 'package:church/core/constant/size.dart';
import 'package:flutter/material.dart';

class MyInfoPageBody extends StatelessWidget {
  const MyInfoPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //이름
              Text(
                "이름",
                style: TextStyle(
                    color: k3DColor,
                    fontSize: size12,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: kEEColor),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: TextFormField(
                    enabled: false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "김철수",
                      hintStyle: TextStyle(color: k9DColor, fontSize: size14),
                    ),
                    style: TextStyle(
                      color: k3DColor,
                      decorationThickness: 0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              //휴대폰 번호
              Text(
                "휴대폰 번호",
                style: TextStyle(
                    color: k3DColor,
                    fontSize: size12,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: kEEColor),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: TextFormField(
                    enabled: false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "010-0000-0000",
                      hintStyle: TextStyle(color: k9DColor, fontSize: size14),
                    ),
                    style: TextStyle(
                      color: k3DColor,
                      decorationThickness: 0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              //이메일
              Text(
                "이메일",
                style: TextStyle(
                    color: k3DColor,
                    fontSize: size12,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: kEEColor),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: TextFormField(
                    enabled: false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "aaa@aaa.com",
                      hintStyle: TextStyle(color: k9DColor, fontSize: size14),
                    ),
                    style: TextStyle(
                      color: k3DColor,
                      decorationThickness: 0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              //비밀번호
              Text(
                "비밀번호",
                style: TextStyle(
                    color: k3DColor,
                    fontSize: size12,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: kEEColor),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          enabled: false,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "********",
                            hintStyle:
                                TextStyle(color: k9DColor, fontSize: size14),
                          ),
                          style: TextStyle(
                            color: k3DColor,
                            decorationThickness: 0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, Move.myInfoPasswordChangePage);
                          },
                          child: Text(
                            "변경",
                            style: TextStyle(
                              color: k3DColor,
                              fontSize: size14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
