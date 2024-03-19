import 'package:church/ui/pages/alarm_page/alarm_page_widgets/alarm_setting_page.dart';
import 'package:church/ui/pages/church_calendar_page/church_calendar_page.dart';
import 'package:church/ui/pages/church_info_page/church_info_page.dart';
import 'package:church/ui/pages/church_member_detail_page/church_member_detail_page.dart';
import 'package:church/ui/pages/church_member_page/church_member_page.dart';
import 'package:church/ui/pages/church_member_write_page/church_member_write_page.dart';
import 'package:church/ui/pages/church_news_detail_page/church_news_detail_page.dart';
import 'package:church/ui/pages/church_news_page/church_news_page.dart';
import 'package:church/ui/pages/church_notice_detail_page/church_notice_detail_page.dart';
import 'package:church/ui/pages/church_notice_page/church_notice_page.dart';
import 'package:church/ui/pages/find_email_page/find_email_page.dart';
import 'package:church/ui/pages/find_email_page/find_email_page_widgets/find_email_success_page.dart';
import 'package:church/ui/pages/find_password_page/find_password_page.dart';
import 'package:church/ui/pages/find_password_page/find_password_page_widgets/find_password_and_change_page.dart';
import 'package:church/ui/pages/join_page/join_page.dart';
import 'package:church/ui/pages/join_page/join_page_widgets/join_page_form_filed.dart';
import 'package:church/ui/pages/login_page/login_page.dart';
import 'package:church/ui/pages/my_info_page/my_info_page.dart';
import 'package:church/ui/pages/my_info_page/my_info_page_widgets/my_info_password_change_page.dart';
import 'package:church/ui/pages/qna_page/qna_page.dart';
import 'package:church/ui/pages/today_sermon_detail_page/today_sermon_detail_page.dart';
import 'package:church/ui/pages/today_sermon_page/today_sermon_page.dart';
import 'package:church/ui/pages/worship_live_page/worship_live_page.dart';
import 'package:church/ui/pages/worship_time_page/worship_time_page.dart';
import 'package:flutter/material.dart';

import '../../ui/pages/main_page.dart';

class Move {
  static String mainPage = "/mainPage";

  //가입 페이지
  static String joinPage = "/joinPage";
  static String joinFormFieldPage = "/joinFormFieldPage";

  //로그인 페이짖
  static String loginPage = "/loginPage";

  //회원정보찾기
  static String findEmailPage = "/findEmailPage";
  static String findEmailSuccessPage = "/findEmailSuccessPage";
  static String findPasswordPage = "/findPasswordPage";
  static String findPasswordAndChangePage = "/findPasswordAndChangePage";

  //알람셋팅 페이지
  static String alarmSettingPage = "/alarmSettingPage";

  //내정보 페이지
  static String myInfoPage = "/myInfoPage";
  static String myInfoPasswordChangePage = "/myInfoPasswordChangePage";

  //소리함 페이지
  static String qnaPage = "/qnaPage";

  //오늘의설교 페이지
  static String todaySermonPage = "/todaySermonPage";
  static String todaySermonDetailPage = "/todaySermonDetailPage";

  //교회주보 페이지
  static String churchNewsPage = "/churchNewsPage";
  static String churchNewsDetailPage = "/churchNewsDetailPage";

  //예배안내 페이지
  static String worshipTimePage = "/worshipTimePage";

  //교회일정 페이지
  static String churchCalendarPage = "/churchCalendarPage";

  //교회소식 페이지
  static String churchNoticePage = "/churchNoticePage";
  static String churchNoticeDetailPage = "/churchNoticeDetailPage";

  //실시간 예배
  static String worshipLivePage = "/worshipLivePage";

  //교우소식 페이지
  static String churchMemberPage = "/churchMemberPage";
  static String churchMemberDetailPage = "/churchMemberDetailPage";
  static String churchMemberWritePage = "/churchMemberWritePage";

  //교회정보 페이지
  static String churchInfoPage = "/churchInfoPage";
}

Map<String, Widget Function(BuildContext)> getRouters() {
  return {
    Move.mainPage: (context) => MainPage(),

    //가입 페이지
    Move.joinPage: (context) => JoinPage(),
    Move.joinFormFieldPage: (context) => JoinPageFormField(),

    //로그인 페이지
    Move.loginPage: (context) => LoginPage(),

    //회원정보찾기
    Move.findEmailPage: (context) => FindEmailPage(),
    Move.findEmailSuccessPage: (context) => FindEmailSuccessPage(),
    Move.findPasswordPage: (context) => FindPasswordPage(),
    Move.findPasswordAndChangePage: (context) => FindPasswordAndChangePage(),

    //알람셋팅 페이지
    Move.alarmSettingPage: (context) => AlarmSettingPage(),

    //내정보 페이지
    Move.myInfoPage: (context) => MyInfoPage(),
    Move.myInfoPasswordChangePage: (context) => MyInfoPasswordChangePage(),

    //소리함 페이지
    Move.qnaPage: (context) => QnAPage(),

    //오늘의설교 페이지
    Move.todaySermonPage: (context) => TodaySermonPage(),
    Move.todaySermonDetailPage: (context) => TodaySermonDetailPage(),

    //교회주보 페이지
    Move.churchNewsPage: (context) => ChurchNewsPage(),
    Move.churchNewsDetailPage: (context) => ChurchNewsDetailPage(),

    //예배안내 페이지
    Move.worshipTimePage: (context) => WorshipTimePage(),

    //교회일정 페이지
    Move.churchCalendarPage: (context) => ChurchCalendarPage(),

    //교회소식 페이지
    Move.churchNoticePage: (context) => ChurchNoticePage(),
    Move.churchNoticeDetailPage: (context) => ChurchNoticeDetailPage(),

    //실시간 예배 페이지
    Move.worshipLivePage: (context) => WorshipLivePage(),

    //교우소식 페이지
    Move.churchMemberPage: (context) => ChurchMemberPage(),
    Move.churchMemberDetailPage: (context) => ChurchMemberDetailPage(),
    Move.churchMemberWritePage: (context) => ChurchMemberWritePage(),

    //교회정보 페이지
    Move.churchInfoPage: (context) => ChurchInfoPage(),
  };
}
