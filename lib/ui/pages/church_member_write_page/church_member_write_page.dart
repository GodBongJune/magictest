import 'package:church/core/constant/color.dart';
import 'package:church/core/constant/size.dart';
import 'package:church/ui/pages/church_member_write_page/church_member_write_page_widgets/church_member_write_page_body.dart';
import 'package:flutter/material.dart';

class ChurchMemberWritePage extends StatelessWidget {
  const ChurchMemberWritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("글쓰기"),
      ),
      body: ChurchMemberWritePageBody(),
    );
  }
}
