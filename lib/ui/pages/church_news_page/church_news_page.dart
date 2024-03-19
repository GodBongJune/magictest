import 'package:church/ui/pages/church_news_page/church_news_page_widgets/church_news_page_body.dart';
import 'package:flutter/material.dart';

class ChurchNewsPage extends StatelessWidget {
  const ChurchNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("교회 주보"),
      ),
      body: ChurchNewsPageBody(),
    );
  }
}
