import 'package:church/ui/pages/church_info_page/church_info_page_widgets/church_info_page_body.dart';
import 'package:flutter/material.dart';

class ChurchInfoPage extends StatelessWidget {
  const ChurchInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("교회 소개"),
      ),
      body: ChurchInfoPageBody(),
    );
  }
}
