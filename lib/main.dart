import 'package:church/core/constant/theme.dart';
import 'package:church/ui/pages/login_page/login_page.dart';
import 'package:church/ui/pages/splash_page/splash_page.dart';
import 'package:church/ui/pages/start_page/start_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'core/constant/move.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
void main() {
  initializeDateFormatting().then((_) => runApp(Church()));
}

class Church extends StatelessWidget {
  Church({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 0.9),
            child: child!,
          );
        },
        navigatorKey: navigatorKey,
        routes: getRouters(),
        debugShowCheckedModeBanner: false,
        home: StartPage(),
        theme: theme(),
      ),
    );
  }
}
