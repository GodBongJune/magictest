import 'package:church/core/constant/color.dart';
import 'package:church/core/constant/size.dart';
import 'package:flutter/material.dart';

class WorshipTimePageBody extends StatelessWidget {
  const WorshipTimePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "주일예배",
                      style: TextStyle(
                        color: k3DColor,
                        fontSize: size16,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                      ),
                      child: Column(
                        children: [
                          Container(
                            color: kF5Color,
                            height: MediaQuery.of(context).size.height * 0.07,
                            child: Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Center(
                                    child: Text(
                                      "예배 순서",
                                      style: TextStyle(
                                          color: k3DColor, fontSize: size14),
                                    ),
                                  ),
                                ),
                                VerticalDivider(color: Colors.grey[400]),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Center(
                                    child: Text(
                                      "예배 시간",
                                      style: TextStyle(
                                          color: k3DColor, fontSize: size14),
                                    ),
                                  ),
                                ),
                                VerticalDivider(color: Colors.grey[400]),
                                Expanded(
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        "예배 장소",
                                        style: TextStyle(
                                            color: k3DColor, fontSize: size14),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.07,
                            child: Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Center(
                                    child: Text(
                                      "1부 예배",
                                      style: TextStyle(
                                          color: k3DColor, fontSize: size14),
                                    ),
                                  ),
                                ),
                                VerticalDivider(color: Colors.grey[400]),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Center(
                                    child: Text(
                                      "오전 8:00",
                                      style: TextStyle(
                                          color: k3DColor, fontSize: size14),
                                    ),
                                  ),
                                ),
                                VerticalDivider(color: Colors.grey[400]),
                                Expanded(
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        "1층 소예배실",
                                        style: TextStyle(
                                            color: k3DColor, fontSize: size14),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.07,
                            child: Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Center(
                                    child: Text(
                                      "2부 예배",
                                      style: TextStyle(
                                          color: k3DColor, fontSize: size14),
                                    ),
                                  ),
                                ),
                                VerticalDivider(color: Colors.grey[400]),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Center(
                                    child: Text(
                                      "오전 9:00",
                                      style: TextStyle(
                                          color: k3DColor, fontSize: size14),
                                    ),
                                  ),
                                ),
                                VerticalDivider(color: Colors.grey[400]),
                                Expanded(
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        "2층 대예배실",
                                        style: TextStyle(
                                            color: k3DColor, fontSize: size14),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.07,
                            child: Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Center(
                                    child: Text(
                                      "3부 예배",
                                      style: TextStyle(
                                          color: k3DColor, fontSize: size14),
                                    ),
                                  ),
                                ),
                                VerticalDivider(color: Colors.grey[400]),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Center(
                                    child: Text(
                                      "오전 11:00",
                                      style: TextStyle(
                                          color: k3DColor, fontSize: size14),
                                    ),
                                  ),
                                ),
                                VerticalDivider(color: Colors.grey[400]),
                                Expanded(
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        "2층 대예배실",
                                        style: TextStyle(
                                            color: k3DColor, fontSize: size14),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.07,
                            child: Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Center(
                                    child: Text(
                                      "4부 예배",
                                      style: TextStyle(
                                          color: k3DColor, fontSize: size14),
                                    ),
                                  ),
                                ),
                                VerticalDivider(color: Colors.grey[400]),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Center(
                                    child: Text(
                                      "오후 1:00",
                                      style: TextStyle(
                                          color: k3DColor, fontSize: size14),
                                    ),
                                  ),
                                ),
                                VerticalDivider(color: Colors.grey[400]),
                                Expanded(
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        "2층 대예배실",
                                        style: TextStyle(
                                            color: k3DColor, fontSize: size14),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.07,
                            child: Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Center(
                                    child: Text(
                                      "저녁 예배",
                                      style: TextStyle(
                                          color: k3DColor, fontSize: size14),
                                    ),
                                  ),
                                ),
                                VerticalDivider(color: Colors.grey[400]),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Center(
                                    child: Text(
                                      "오후 7:00",
                                      style: TextStyle(
                                          color: k3DColor, fontSize: size14),
                                    ),
                                  ),
                                ),
                                VerticalDivider(color: Colors.grey[400]),
                                Expanded(
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        "2층 대예배실",
                                        style: TextStyle(
                                            color: k3DColor, fontSize: size14),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "주중예배",
                      style: TextStyle(
                        color: k3DColor,
                        fontSize: size16,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                      ),
                      child: Column(
                        children: [
                          Container(
                            color: kF5Color,
                            height: MediaQuery.of(context).size.height * 0.07,
                            child: Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Center(
                                    child: Text(
                                      "예배 순서",
                                      style: TextStyle(
                                          color: k3DColor, fontSize: size14),
                                    ),
                                  ),
                                ),
                                VerticalDivider(color: Colors.grey[400]),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Center(
                                    child: Text(
                                      "예배 시간",
                                      style: TextStyle(
                                          color: k3DColor, fontSize: size14),
                                    ),
                                  ),
                                ),
                                VerticalDivider(color: Colors.grey[400]),
                                Expanded(
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        "예배 장소",
                                        style: TextStyle(
                                            color: k3DColor, fontSize: size14),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.07,
                            child: Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Center(
                                    child: Text(
                                      "새벽기도",
                                      style: TextStyle(
                                          color: k3DColor, fontSize: size14),
                                    ),
                                  ),
                                ),
                                VerticalDivider(color: Colors.grey[400]),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Center(
                                    child: Text(
                                      "오전 6:00",
                                      style: TextStyle(
                                          color: k3DColor, fontSize: size14),
                                    ),
                                  ),
                                ),
                                VerticalDivider(color: Colors.grey[400]),
                                Expanded(
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        "1층 소예배실",
                                        style: TextStyle(
                                            color: k3DColor, fontSize: size14),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.07,
                            child: Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Center(
                                    child: Text(
                                      "수요 예배",
                                      style: TextStyle(
                                          color: k3DColor, fontSize: size14),
                                    ),
                                  ),
                                ),
                                VerticalDivider(color: Colors.grey[400]),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Center(
                                    child: Text(
                                      "오전 11:00",
                                      style: TextStyle(
                                          color: k3DColor, fontSize: size14),
                                    ),
                                  ),
                                ),
                                VerticalDivider(color: Colors.grey[400]),
                                Expanded(
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        "2층 대예배실",
                                        style: TextStyle(
                                            color: k3DColor, fontSize: size14),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.07,
                            child: Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Center(
                                    child: Text(
                                      "금요예배",
                                      style: TextStyle(
                                          color: k3DColor, fontSize: size14),
                                    ),
                                  ),
                                ),
                                VerticalDivider(color: Colors.grey[400]),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Center(
                                    child: Text(
                                      "오후 9:00",
                                      style: TextStyle(
                                          color: k3DColor, fontSize: size14),
                                    ),
                                  ),
                                ),
                                VerticalDivider(color: Colors.grey[400]),
                                Expanded(
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        "2층 대예배실",
                                        style: TextStyle(
                                            color: k3DColor, fontSize: size14),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
