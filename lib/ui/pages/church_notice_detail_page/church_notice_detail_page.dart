import 'package:church/ui/pages/church_notice_detail_page/church_notice_detail_page_widgets/church_notice_detail_page_body.dart';
import 'package:flutter/material.dart';

class ChurchNoticeDetailPage extends StatelessWidget {
  const ChurchNoticeDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("교회 소식"),
      ),
      body: ChurchNoticeDetailPageBody(),
    );
  }
}
