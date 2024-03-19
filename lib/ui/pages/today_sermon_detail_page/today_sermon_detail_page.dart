import 'package:church/ui/pages/today_sermon_detail_page/today_sermon_detail_widgets/today_sermon_detail_page_body.dart';
import 'package:flutter/material.dart';

class TodaySermonDetailPage extends StatelessWidget {
  const TodaySermonDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("오늘의 설교"),
      ),
      body: TodaySermonDetailPageBody(),
    );
  }
}
