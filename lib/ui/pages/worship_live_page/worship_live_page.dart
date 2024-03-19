import 'package:church/ui/pages/worship_live_page/worship_live_page_widgets/worship_live_page_body.dart';
import 'package:flutter/material.dart';

class WorshipLivePage extends StatelessWidget {
  const WorshipLivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("실시간 예배"),
      ),
      body: WorshipLivePageBody(),
    );
  }
}
