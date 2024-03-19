import 'package:church/core/constant/color.dart';
import 'package:church/core/constant/move.dart';
import 'package:church/core/constant/size.dart';
import 'package:flutter/material.dart';

class ChurchMemberPageBody extends StatelessWidget {
  const ChurchMemberPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final List<List<String>> notice = [
      ["2023.11.30", "000님 ㅁㅁㅁㅁ식당 개업"],
      ["2023.11.30", "000 장로님 00월 00일 칠순"],
      ["2023.11.30", "000님 자녀분 결혼식 00월 00일"],
      ["2023.11.30", "000 선교사님 자녀 출산"],
      ["2023.11.30", "길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐길어짐"],
    ];

    return ListView.separated(
      itemCount: notice.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, Move.churchMemberDetailPage);
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
