import 'dart:async';

import 'package:church/ui/pages/login_page/login_page.dart';
import 'package:church/ui/pages/main_page.dart';
import 'package:church/ui/pages/qna_page/qna_page.dart';
import 'package:church/ui/pages/qna_page/qna_page_widgets/qna_page_answer.dart';
import 'package:church/ui/pages/qna_page/qna_page_widgets/qna_page_question.dart';
import 'package:church/ui/pages/start_page/start_page.dart';
import 'package:flutter/material.dart';

class CapturePage extends StatefulWidget {
  const CapturePage({super.key});

  @override
  State<CapturePage> createState() => _CapturePageState();
}

class _CapturePageState extends State<CapturePage> {
  bool start = true;
  bool login = false;
  bool joinAgree = false;
  bool joinFormField = false;
  bool findEmail = false;
  bool findEmailSuccess = false;
  bool findPassword = false;
  bool findPasswordSuccess = false;
  bool main = false;
  bool alarm = false;
  bool alarmSetting = false;
  bool calendar = false;
  bool churchNoticeList = false;
  bool churchNoticeDetail = false;
  bool churchInfo = false;
  bool my = false;
  bool myInfo = false;
  bool myInfoPassword = false;
  bool qna = false;
  bool qnaList = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    if (start) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          setState(() {
            start = false;
            login = true;
          });
        }
      });
      return StartPage();
    }
    if (login) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          setState(() {
            login = false;
            main = true;
          });
        }
      });
      return LoginPage();
    }
    if (main) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          setState(() {});
        }
      });
      return QnAPageAnswer();

      Future.microtask(() => {
            if (mounted)
              {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MainPage(initialPage: 0)))
              }
          });
      return Container();
    }
    return Container();
  }
}
