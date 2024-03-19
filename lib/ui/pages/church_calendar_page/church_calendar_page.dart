import 'package:church/ui/pages/church_calendar_page/church_calendar_page_widgets/church_calendar_page_body.dart';
import 'package:flutter/material.dart';

class ChurchCalendarPage extends StatelessWidget {
  const ChurchCalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("교회 일정"),
      ),
      body: ChurchCalendarPageBody(),
    );
  }
}
