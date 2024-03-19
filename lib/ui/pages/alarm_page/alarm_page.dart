import 'package:church/core/constant/color.dart';
import 'package:church/core/constant/move.dart';
import 'package:church/ui/pages/alarm_page/alarm_page_widgets/alarm_page_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlarmPage extends StatelessWidget {
  const AlarmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("알림"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, Move.alarmSettingPage);
            },
            icon: Icon(CupertinoIcons.gear),
          ),
        ],
        shape: Border(
          bottom: BorderSide(color: kEEColor),
        ),
      ),
      body: AlarmPageBody(),
    );
  }
}
