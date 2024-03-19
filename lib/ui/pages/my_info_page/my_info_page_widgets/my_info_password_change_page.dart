import 'package:flutter/material.dart';

import '../../../../core/constant/color.dart';
import '../../../../core/constant/size.dart';

class MyInfoPasswordChangePage extends StatefulWidget {
  const MyInfoPasswordChangePage({super.key});

  @override
  State<MyInfoPasswordChangePage> createState() =>
      _MyInfoPasswordChangePageState();
}

class _MyInfoPasswordChangePageState extends State<MyInfoPasswordChangePage> {
  TextEditingController password = TextEditingController();
  TextEditingController passwordCheck = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("내정보"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                    child: TextFormField(
                      controller: password,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "대문자,소문자,숫자,특수문자를 포함한 8글자 이상",
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
                //비밀번호 재확인
                Text(
                  "비밀번호 재확인",
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
                      controller: passwordCheck,
                      onChanged: (value) {
                        setState(() {});
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "비밀번호를 일치하게 작성해주세요",
                        hintStyle: TextStyle(color: k9DColor, fontSize: size14),
                      ),
                      style: TextStyle(
                        color: k3DColor,
                        decorationThickness: 0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: Visibility(
                    visible: password.text != passwordCheck.text,
                    child: Text(
                      "비밀번호가 일치하지 않습니다.",
                      style: TextStyle(
                        color: kEAColor,
                        fontSize: size12,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: k77Color,
                        content: Container(
                          height: MediaQuery.of(context).size.height * 0.03,
                          child: Center(
                            child: Text(
                              "비밀번호 변경이 완료되었습니다.",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: size14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        duration: Duration(seconds: 1),
                        margin: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.height * 0.13,
                          left: 16,
                          right: 16,
                        ),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
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
                        "비밀번호 변경",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: size16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.075,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: k3DColor)),
                    child: Center(
                      child: Text(
                        "취소",
                        style: TextStyle(
                          color: k3DColor,
                          fontSize: size16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
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
