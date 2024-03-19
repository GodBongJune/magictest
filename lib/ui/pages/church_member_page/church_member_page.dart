import 'package:church/core/constant/color.dart';
import 'package:church/core/constant/move.dart';
import 'package:church/ui/pages/church_member_page/church_member_page_widgets/church_member_page_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChurchMemberPage extends StatelessWidget {
  const ChurchMemberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("교우 소식"),
      ),
      body: ChurchMemberPageBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: k3DColor,
        onPressed: () {
          Navigator.pushNamed(context, Move.churchMemberWritePage);
        },
        child: Icon(
          CupertinoIcons.plus,
          color: Colors.white,
        ),
      ),
    );
  }
}
