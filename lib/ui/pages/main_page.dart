import 'package:church/core/constant/color.dart';
import 'package:church/core/constant/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'alarm_page/alarm_page.dart';
import 'home_page/home_page.dart';
import 'my_page/my_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedPage = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: onWillPop,
        child: IndexedStack(
          index: _selectedPage,
          children: [
            AlarmPage(),
            HomePage(),
            MyPage(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedPage,
        selectedItemColor: k3DColor,
        unselectedItemColor: k9DColor,
        onTap: (index) {
          setState(() {
            _selectedPage = index;
          });
        },
        items: [
          const BottomNavigationBarItem(
              label: "알림", icon: Icon(CupertinoIcons.bell)),
          const BottomNavigationBarItem(
              label: "홈", icon: Icon(CupertinoIcons.home)),
          const BottomNavigationBarItem(
              label: "마이페이지", icon: Icon(CupertinoIcons.person)),
        ],
        unselectedLabelStyle: TextStyle(fontSize: size10),
        selectedLabelStyle: TextStyle(fontSize: size10),
      ),
    );
  }

  DateTime? currentBackPressTime;

  Future<bool> onWillPop() async {
    DateTime currentTime = DateTime.now();

    //Statement 1 Or statement2
    if (currentBackPressTime == null ||
        currentTime.difference(currentBackPressTime!) >
            const Duration(seconds: 2)) {
      currentBackPressTime = currentTime;
      Fluttertoast.showToast(
          msg: "'뒤로' 버튼을 한번 더 누르시면 종료됩니다.",
          gravity: ToastGravity.BOTTOM,
          backgroundColor: const Color(0xff6E6E6E),
          fontSize: 15,
          toastLength: Toast.LENGTH_SHORT);
      return false;
    }
    return true;
  }
}
