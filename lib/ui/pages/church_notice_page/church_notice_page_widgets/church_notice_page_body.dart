import 'package:church/core/constant/move.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/color.dart';
import '../../../../core/constant/size.dart';

class ChurchNoticePageBody extends StatelessWidget {
  const ChurchNoticePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final List<List<String>> notice = [
      ["2023.12.10", "2023년 성탄기념 봉사활동 안내"],
      ["2023.11.30", "2023년 12월 교회 주요 행사 관련 안내 길어질때는 이렇게이렇게이렇게"],
    ];

    return ListView.separated(
      itemCount: notice.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, Move.churchNoticeDetailPage);
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.08,
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        notice[index][0],
                        style: TextStyle(
                          color: kC8Color,
                          fontSize: size12,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Text(
                          notice[index][1],
                          style: TextStyle(
                            color: k3DColor,
                            fontSize: size16,
                          ),
                          maxLines: 1,
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
