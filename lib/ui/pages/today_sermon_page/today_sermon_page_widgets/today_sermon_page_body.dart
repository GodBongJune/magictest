import 'package:church/core/constant/move.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/color.dart';
import '../../../../core/constant/size.dart';

class TodaySermonPageBody extends StatelessWidget {
  const TodaySermonPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final List<List<String>> sermon = [
      ["2023.11.30", "넘치는 축복과 감사 [23년 성탄감사예배] / 김철수 목사 / 마태복음 7:7~8"],
      ["2023.11.30", "넘치는 축복과 감사 [23년 성탄감사예배] / 김철수 목사 / 마태복음 7:7~8"],
      [
        "2023.11.30",
        "넘치는 축복과 감사 [23년 성탄감사예배] / 김철수 목사 / 마태복음 7:7~8 길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐"
      ],
      [
        "2023.11.30",
        "넘치는 축복과 감사 [23년 성탄감사예배] / 김철수 목사 / 마태복음 7:7~8 길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐"
      ],
    ];

    return ListView.separated(
      itemCount: sermon.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, Move.todaySermonDetailPage);
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.12,
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        sermon[index][0],
                        style: TextStyle(
                          color: kC8Color,
                          fontSize: size12,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Text(
                          sermon[index][1],
                          style: TextStyle(
                            color: k3DColor,
                            fontSize: size16,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: k3DColor,
                  ),
                ],
              ),
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const Divider(color: kEEColor);
      },
    );
  }
}
