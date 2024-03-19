import 'package:church/ui/pages/church_member_detail_page/church_member_detail_page_widgets/church_member_detail_page_body.dart';
import 'package:flutter/material.dart';

class ChurchMemberDetailPage extends StatelessWidget {
  const ChurchMemberDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("교우 소식"),
      ),
      body: ChurchMemberDetailPageBody(),
    );
  }
}
