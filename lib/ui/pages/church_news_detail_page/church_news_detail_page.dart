import 'package:church/ui/pages/church_news_detail_page/church_news_detail_page_widgets/church_news_detail_page_body.dart';
import 'package:flutter/material.dart';

class ChurchNewsDetailPage extends StatelessWidget {
  const ChurchNewsDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("교회 주보"),
      ),
      body: ChurchNewsDetailPageBody(),
    );
  }
}
