import 'package:church/ui/pages/find_password_page/find_password_page_widgets/find_password_page_body.dart';
import 'package:flutter/material.dart';

class FindPasswordPage extends StatelessWidget {
  const FindPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FindPasswordPageBody(),
    );
  }
}
