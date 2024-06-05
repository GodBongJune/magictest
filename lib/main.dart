import 'dart:io';

import 'package:church/core/constant/theme.dart';
import 'package:church/ui/pages/capture_page.dart';
import 'package:church/ui/pages/start_page/start_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'core/constant/move.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('ko_KR', null);

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
  ));

  runApp(Church());
}

class Church extends StatelessWidget {
  Church({super.key});

  final List<String> capturedImagePaths = [];

  @override
  Widget build(BuildContext context) {
    // captureScreenshots();

    return SafeArea(
      child: MaterialApp(
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
            child: child!,
          );
        },
        navigatorKey: navigatorKey,
        routes: getRouters(),
        debugShowCheckedModeBanner: false,
        home: Builder(
          builder: (context) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
              child: StartPage(),
            );
          },
        ),
        theme: theme(),
      ),
    );
  }
}
