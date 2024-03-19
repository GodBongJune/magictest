import 'package:church/ui/pages/login_page/login_page.dart';
import 'package:church/ui/pages/start_page/start_page_widgets/start_page_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              );
            },
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: StartPageBody(),
    );
  }
}
