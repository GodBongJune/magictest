import 'package:flutter/material.dart';

import '../../../../core/constant/color.dart';
import '../../../../core/constant/size.dart';

class FindPasswordAndChangePage extends StatefulWidget {
  const FindPasswordAndChangePage({super.key});

  @override
  State<FindPasswordAndChangePage> createState() =>
      _FindPasswordAndChangePageState();
}

class _FindPasswordAndChangePageState extends State<FindPasswordAndChangePage> {
  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _passwordCheckFocusNode = FocusNode();

  bool _isPasswordKeyboard = false;
  bool _isPasswordCheckKeyboard = false;

  @override
  void initState() {
    super.initState();

    _passwordFocusNode.addListener(() {
      setState(() {
        _isPasswordKeyboard = _passwordFocusNode.hasFocus;
      });
    });

    _passwordCheckFocusNode.addListener(() {
      setState(() {
        _isPasswordCheckKeyboard = _passwordCheckFocusNode.hasFocus;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  // TextFormField(
                  //   obscureText: true,
                  //   focusNode: _passwordFocusNode,
                  //   style: TextStyle(
                  //     decorationThickness: 0,
                  //     color: _isPasswordKeyboard ? k3DColor : k9DColor,
                  //   ),
                  //   decoration: InputDecoration(
                  //     border: InputBorder.none,
                  //     hintText: "새 비밀번호 입력",
                  //     hintStyle: TextStyle(
                  //       color: k9DColor,
                  //       fontSize: size14,
                  //     ),
                  //     focusedBorder: UnderlineInputBorder(
                  //       borderSide: BorderSide(
                  //         color: _isPasswordKeyboard ? k3DColor : k3DColor,
                  //       ),
                  //     ),
                  //     enabledBorder: UnderlineInputBorder(
                  //       borderSide: BorderSide(
                  //         color: _isPasswordKeyboard ? k3DColor : k9DColor,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.065,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: kEEColor),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: TextFormField(
                          obscureText: true,
                          focusNode: _passwordFocusNode,
                          style: TextStyle(
                            decorationThickness: 0,
                            color: _isPasswordKeyboard ? k3DColor : k9DColor,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "새 비밀번호 입력",
                            hintStyle: TextStyle(
                              color: k9DColor,
                              fontSize: size14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  // TextFormField(
                  //   obscureText: true,
                  //   focusNode: _passwordCheckFocusNode,
                  //   style: TextStyle(
                  //     decorationThickness: 0,
                  //     color: _isPasswordCheckKeyboard ? k3DColor : k9DColor,
                  //   ),
                  //   decoration: InputDecoration(
                  //     border: InputBorder.none,
                  //     hintText: "새 비밀번호 재입력",
                  //     hintStyle: TextStyle(
                  //       color: k9DColor,
                  //       fontSize: size14,
                  //     ),
                  //     focusedBorder: UnderlineInputBorder(
                  //       borderSide: BorderSide(
                  //         color: _isPasswordCheckKeyboard ? k3DColor : k3DColor,
                  //       ),
                  //     ),
                  //     enabledBorder: UnderlineInputBorder(
                  //       borderSide: BorderSide(
                  //         color: _isPasswordCheckKeyboard ? k3DColor : k9DColor,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.065,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: kEEColor),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: TextFormField(
                          obscureText: true,
                          focusNode: _passwordCheckFocusNode,
                          style: TextStyle(
                            decorationThickness: 0,
                            color:
                                _isPasswordCheckKeyboard ? k3DColor : k9DColor,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "새 비밀번호 재입력",
                            hintStyle: TextStyle(
                              color: k9DColor,
                              fontSize: size14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: k77Color,
                          content: Container(
                            height: MediaQuery.of(context).size.height * 0.03,
                            child: Center(
                              child: Text(
                                "비밀번호가 변경되었습니다.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          duration: Duration(seconds: 1),
                          margin: EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.height * 0.13,
                            left: 16,
                            right: 16,
                          ),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.075,
                      decoration: BoxDecoration(
                        color: k3DColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          "비밀번호 변경",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: size16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
