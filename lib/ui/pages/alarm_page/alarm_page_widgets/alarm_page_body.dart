import 'package:church/core/constant/color.dart';
import 'package:church/core/constant/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AlarmPageBody extends StatefulWidget {
  const AlarmPageBody({super.key});

  @override
  State<AlarmPageBody> createState() => _AlarmPageBodyState();
}

class _AlarmPageBodyState extends State<AlarmPageBody> {
  final List<List<String>> alarm = [
    ["[교회소식] 2023년 성탄기념 봉사활동 안내", "17시간 전"],
    ["[예배 일정] 성탄감사예배(25일) 일정 안내", "3일 전"],
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: alarm.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.1,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  child: SvgPicture.asset("assets/images/logo/smallChurch.svg"),
                ),
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      alarm[index][0],
                      style: TextStyle(
                        color: k3DColor,
                        fontSize: size14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      alarm[index][1],
                      style: TextStyle(
                        color: k9DColor,
                        fontSize: size12,
                      ),
                    ),
                  ],
                ),
              ],
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
