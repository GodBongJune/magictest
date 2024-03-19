import 'package:church/ui/pages/church_notice_page/church_notice_page_widgets/church_notice_page_body.dart';
import 'package:flutter/material.dart';

class ChurchNoticePage extends StatelessWidget {
  const ChurchNoticePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("교회 소식"),
      ),
      body: ChurchNoticePageBody(),
    );
  }
}
