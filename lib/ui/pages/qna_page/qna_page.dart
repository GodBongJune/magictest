import 'package:church/core/constant/color.dart';
import 'package:church/core/constant/size.dart';
import 'package:church/ui/pages/qna_page/qna_page_widgets/qna_page_answer.dart';
import 'package:church/ui/pages/qna_page/qna_page_widgets/qna_page_question.dart';
import 'package:flutter/material.dart';

const List<Tab> tabs = <Tab>[
  Tab(text: "문의하기"),
  Tab(text: "문의내역확인"),
];

class QnAPage extends StatelessWidget {
  final int tabIndex;

  const QnAPage({super.key, this.tabIndex = 0});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("건의함"),
          bottom: TabBar(
            labelStyle: TextStyle(
              color: k3DColor,
              fontSize: size14,
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelColor: kC8Color,
            unselectedLabelStyle: TextStyle(
                color: kC8Color, fontSize: size14, fontWeight: FontWeight.bold),
            tabs: tabs,
          ),
        ),
        body: TabBarView(
          children: [
            QnAPageQuestion(),
            QnAPageAnswer(),
          ],
        ),
      ),
    );
  }
}
