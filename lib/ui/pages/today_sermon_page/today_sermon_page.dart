import 'package:church/ui/pages/today_sermon_page/today_sermon_page_widgets/today_sermon_page_body.dart';
import 'package:flutter/material.dart';

class TodaySermonPage extends StatelessWidget {
  const TodaySermonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("오늘의 설교"),
      ),
      body: TodaySermonPageBody(),
    );
  }
}
