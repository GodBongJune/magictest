import 'package:church/core/constant/color.dart';
import 'package:church/core/constant/move.dart';
import 'package:church/core/constant/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JoinPageBody extends StatefulWidget {
  const JoinPageBody({super.key});

  @override
  State<JoinPageBody> createState() => _JoinPageBodyState();
}

class _JoinPageBodyState extends State<JoinPageBody> {
  bool agree1 = false;
  bool agree2 = false;
  bool agree3 = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Text(
                  "엠바스 서비스 이용약관에 동의 해 주세요.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: size20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.47),
              Text(
                "약관동의",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: size16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              agree1 = !agree1;
                            });
                          },
                          child: Row(
                            children: [
                              Icon(
                                CupertinoIcons.checkmark_alt,
                                color: agree1 ? k27CColor : k9CColor,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "[필수] 개인정보 수집 동의",
                                style: TextStyle(
                                  color: k3DColor,
                                  fontSize: size14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "보기",
                            style: TextStyle(
                              color: k9DColor,
                              fontSize: size14,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              agree2 = !agree2;
                            });
                          },
                          child: Row(
                            children: [
                              Icon(
                                CupertinoIcons.checkmark_alt,
                                color: agree2 ? k27CColor : k9CColor,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "[필수] 서비스 이용약관 동의",
                                style: TextStyle(
                                  color: k3DColor,
                                  fontSize: size14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "보기",
                            style: TextStyle(
                              color: k9DColor,
                              fontSize: size14,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              agree3 = !agree3;
                            });
                          },
                          child: Row(
                            children: [
                              Icon(
                                CupertinoIcons.checkmark_alt,
                                color: agree3 ? k27CColor : k9CColor,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "[선택] 마케팅 정보 수신 동의",
                                style: TextStyle(
                                  color: k3DColor,
                                  fontSize: size14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "보기",
                            style: TextStyle(
                              color: k9DColor,
                              fontSize: size14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              InkWell(
                onTap: () {
                  Navigator.popAndPushNamed(context, Move.joinFormFieldPage);
                },
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.075,
                  decoration: BoxDecoration(
                    color: k3DColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      "다음",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: size16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
