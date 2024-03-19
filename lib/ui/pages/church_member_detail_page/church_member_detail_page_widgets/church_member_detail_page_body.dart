import 'package:church/core/constant/color.dart';
import 'package:church/core/constant/size.dart';
import 'package:flutter/material.dart';

class ChurchMemberDetailPageBody extends StatelessWidget {
  const ChurchMemberDetailPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "2023.12.20",
                      style: TextStyle(
                        color: kC8Color,
                        fontSize: size12,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "000님 ㅁㅁㅁㅁ식당 개업",
                      style: TextStyle(
                        color: k3DColor,
                        fontSize: size16,
                      ),
                    ),
                    SizedBox(height: 10),
                    Divider(color: kEEColor),
                    SizedBox(height: 10),
                    Text(
                      "교우 소식 내용이 들어갈 위치입니다.\n\n"
                      "폰트는 프리텐다드에 Regular고 폰트 사이즈는 16px 입니다. 컬러는 #767676을 사용하고 있습니다.",
                      style: TextStyle(
                        color: k76Color,
                        fontSize: size16,
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              Divider(color: kEEColor),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "댓글 3",
                          style: TextStyle(
                            color: k3DColor,
                            fontSize: size16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "김철수 장로",
                          style: TextStyle(
                              color: k3DColor,
                              fontSize: size16,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "댓글 내용입니다",
                          style: TextStyle(
                            color: k76Color,
                            fontSize: size16,
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              "YYYY.MM.DD HH:MM",
                              style: TextStyle(
                                color: k9DColor,
                                fontSize: size12,
                              ),
                            ),
                            SizedBox(width: 10),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "답글쓰기",
                                style: TextStyle(
                                  color: k3DColor,
                                  fontSize: size12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 32.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "김영희 님",
                            style: TextStyle(
                                color: k3DColor,
                                fontSize: size16,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "댓글 내용입니다",
                            style: TextStyle(
                              color: k76Color,
                              fontSize: size16,
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text(
                                "YYYY.MM.DD HH:MM",
                                style: TextStyle(
                                  color: k9DColor,
                                  fontSize: size12,
                                ),
                              ),
                              SizedBox(width: 10),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  "답글쓰기",
                                  style: TextStyle(
                                    color: k3DColor,
                                    fontSize: size12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "김영수 님",
                              style: TextStyle(
                                  color: k3DColor,
                                  fontSize: size16,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "댓글 내용입니다",
                              style: TextStyle(
                                color: k76Color,
                                fontSize: size16,
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  "YYYY.MM.DD HH:MM",
                                  style: TextStyle(
                                    color: k9DColor,
                                    fontSize: size12,
                                  ),
                                ),
                                SizedBox(width: 10),
                                InkWell(
                                  onTap: () {},
                                  child: Text(
                                    "답글쓰기",
                                    style: TextStyle(
                                      color: k3DColor,
                                      fontSize: size12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(16),
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
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "댓글을 남겨보세요",
                      hintStyle: TextStyle(
                        color: kC8Color,
                        fontSize: size12,
                      ),
                    ),
                    style: TextStyle(
                      color: k3DColor,
                      decorationThickness: 0,
                      fontSize: size14,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.13,
                      height: MediaQuery.of(context).size.height * 0.04,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: k3DColor,
                      ),
                      child: Center(
                        child: Text(
                          "등록",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: size10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
