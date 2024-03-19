import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/color.dart';
import '../../../../core/constant/size.dart';

class QnAPageQuestion extends StatefulWidget {
  const QnAPageQuestion({super.key});

  @override
  State<QnAPageQuestion> createState() => _QnAPageQuestionState();
}

class _QnAPageQuestionState extends State<QnAPageQuestion> {
  List<String> phoneList = <String>["일반 문의", "일반 문의2"];
  String phone = "일반 문의";

  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              //문의 유형
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: kEEColor),
                  borderRadius: BorderRadius.circular(5),
                ),
                height: MediaQuery.of(context).size.height * 0.065,
                width: double.infinity,
                child: DropdownButton(
                  underline: Container(
                    height: 1,
                    color: Colors.transparent,
                  ),
                  isExpanded: true,
                  value: phone,
                  items: phoneList.map((String item) {
                    return DropdownMenuItem<String>(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text(
                          "$item",
                          style: TextStyle(color: k9DColor),
                        ),
                      ),
                      value: item,
                    );
                  }).toList(),
                  style: TextStyle(color: k3DColor),
                  onChanged: (dynamic value) {
                    setState(() {
                      phone = value;
                    });
                  },
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              //문의 제목
              Container(
                height: MediaQuery.of(context).size.height * 0.065,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: kEEColor),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "제목을 입력해주세요.",
                        hintStyle: TextStyle(color: k9DColor, fontSize: size14),
                      ),
                      style: TextStyle(
                        color: k3DColor,
                        decorationThickness: 0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              //문의 내용
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: kEEColor),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: TextFormField(
                    maxLines: null,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "문의 내용을 입력해주세요.",
                      hintStyle: TextStyle(color: k9DColor, fontSize: size14),
                    ),
                    style: TextStyle(
                      color: k3DColor,
                      decorationThickness: 0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              //파일 첨부
              Container(
                height: MediaQuery.of(context).size.height * 0.065,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: kEEColor),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Center(
                    child: Row(
                      children: [
                        Text(
                          "파일 첨부",
                          style: TextStyle(
                            color: k76Color,
                            fontSize: size14,
                          ),
                        ),
                        Spacer(),
                        Icon(CupertinoIcons.link, size: 18),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              //이용동의
              InkWell(
                onTap: () {
                  setState(() {
                    agree = !agree;
                  });
                },
                child: Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.radio_button_checked,
                        color: agree ? k3DColor : kC8Color,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "[필수] 개인정보 수집 및 이용동의",
                        style: TextStyle(
                          color: k3DColor,
                          fontSize: size14,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: kEEColor),
                ),
                child: Container(),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              //문의하기,취소 버튼
              // Expanded(
              //   child: InkWell(
              //     child: Container(
              //       height: MediaQuery.of(context).size.height * 0.065,
              //       decoration: BoxDecoration(
              //         color: kEEColor,
              //         borderRadius: BorderRadius.circular(5),
              //       ),
              //       child: Center(
              //         child: Text(
              //           "취소",
              //           style: TextStyle(
              //             color: k3DColor,
              //             fontSize: size16,
              //             fontWeight: FontWeight.bold,
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(width: 10),
              InkWell(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.065,
                  decoration: BoxDecoration(
                    color: k3DColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      "문의하기",
                      style: TextStyle(
                        color: Colors.white,
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
    );
  }
}
