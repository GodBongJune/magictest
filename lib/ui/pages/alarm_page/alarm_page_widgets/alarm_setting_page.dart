import 'package:church/core/constant/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/color.dart';

class AlarmSettingPage extends StatefulWidget {
  const AlarmSettingPage({super.key});

  @override
  State<AlarmSettingPage> createState() => _AlarmSettingPageState();
}

class _AlarmSettingPageState extends State<AlarmSettingPage> {
  bool agree1 = false;
  bool agree2 = false;
  bool agree3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("설정"),
        shape: Border(
          bottom: BorderSide(color: kEEColor),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "알림 설정",
                  style: TextStyle(
                      color: k3DColor,
                      fontSize: size14,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "예배 일정 알림",
                          style: TextStyle(
                            color: k3DColor,
                            fontSize: size14,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "예배 일정을 알려드립니다",
                          style: TextStyle(
                            color: k9DColor,
                            fontSize: size12,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Transform.scale(
                      scale: 0.7,
                      child: CupertinoSwitch(
                        value: agree1,
                        onChanged: (bool value) {
                          setState(() {
                            agree1 = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(color: kEEColor),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "교회 소식 알림",
                          style: TextStyle(
                            color: k3DColor,
                            fontSize: size14,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "교회관련 소식을 알려드립니다. ",
                          style: TextStyle(
                            color: k9DColor,
                            fontSize: size12,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Transform.scale(
                      scale: 0.7,
                      child: CupertinoSwitch(
                        value: agree2,
                        onChanged: (bool value) {
                          setState(() {
                            agree2 = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(color: kEEColor),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "교우소식 알림",
                          style: TextStyle(
                            color: k3DColor,
                            fontSize: size14,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "교우관련 소식을 알려드립니다. ",
                          style: TextStyle(
                            color: k9DColor,
                            fontSize: size12,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Transform.scale(
                      scale: 0.7,
                      child: CupertinoSwitch(
                        value: agree3,
                        onChanged: (bool value) {
                          setState(() {
                            agree3 = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
