import 'package:church/ui/pages/worship_time_page/worship_time_page_widgets/worship_time_page_body.dart';
import 'package:flutter/material.dart';

class WorshipTimePage extends StatelessWidget {
  const WorshipTimePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("예배 안내"),
      ),
      body: WorshipTimePageBody(),
    );
  }
}
