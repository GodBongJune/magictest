import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/color.dart';
import '../../../../core/constant/size.dart';

class JoinPageFormField extends StatefulWidget {
  JoinPageFormField({super.key});

  @override
  State<JoinPageFormField> createState() => _JoinPageFormFieldState();
}

class _JoinPageFormFieldState extends State<JoinPageFormField> {
  List<String> phoneList = <String>["SKT", "KT", "LG", "알뜰폰"];
  String phone = "SKT";

  bool newFamily = false;

  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _emailAuthFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _passwordCheckFocusNode = FocusNode();
  final FocusNode _phoneFocusNode = FocusNode();

  bool _isNameKeyboard = false;
  bool _isEmailKeyboard = false;
  bool _isEmailAuthKeyboard = false;
  bool _isPasswordKeyboard = false;
  bool _isPasswordCheckKeyboard = false;
  bool _isPhoneKeyboard = false;

  @override
  void initState() {
    super.initState();

    _nameFocusNode.addListener(() {
      setState(() {
        _isNameKeyboard = _nameFocusNode.hasFocus;
      });
    });

    _emailFocusNode.addListener(() {
      setState(() {
        _isEmailKeyboard = _emailFocusNode.hasFocus;
      });
    });

    _emailAuthFocusNode.addListener(() {
      setState(() {
        _isEmailAuthKeyboard = _emailAuthFocusNode.hasFocus;
      });
    });

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

    _phoneFocusNode.addListener(() {
      setState(() {
        _isPhoneKeyboard = _phoneFocusNode.hasFocus;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                // TextFormField(
                //   focusNode: _nameFocusNode,
                //   style: TextStyle(
                //     decorationThickness: 0,
                //     color: _isNameKeyboard ? k3DColor : k9DColor,
                //   ),
                //   decoration: InputDecoration(
                //     border: InputBorder.none,
                //     hintText: "이름",
                //     hintStyle: TextStyle(
                //       color: k9DColor,
                //       fontSize: size14,
                //     ),
                //     focusedBorder: UnderlineInputBorder(
                //       borderSide: BorderSide(
                //         color: _isNameKeyboard ? k3DColor : k3DColor,
                //       ),
                //     ),
                //     enabledBorder: UnderlineInputBorder(
                //       borderSide: BorderSide(
                //         color: _isNameKeyboard ? k3DColor : k9DColor,
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
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Center(
                      child: TextFormField(
                        focusNode: _nameFocusNode,
                        style: TextStyle(
                          decorationThickness: 0,
                          color: _isNameKeyboard ? k3DColor : k9DColor,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "이름",
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
                // Row(
                //   children: [
                //     Expanded(
                //       child: TextFormField(
                //         focusNode: _emailFocusNode,
                //         style: TextStyle(
                //           decorationThickness: 0,
                //           color: _isEmailKeyboard ? k3DColor : k9DColor,
                //         ),
                //         decoration: InputDecoration(
                //           border: InputBorder.none,
                //           hintText: "이메일",
                //           hintStyle: TextStyle(
                //             color: k9DColor,
                //             fontSize: size14,
                //           ),
                //           focusedBorder: UnderlineInputBorder(
                //             borderSide: BorderSide(
                //               color: _isEmailKeyboard ? k3DColor : k3DColor,
                //             ),
                //           ),
                //           enabledBorder: UnderlineInputBorder(
                //             borderSide: BorderSide(
                //               color: _isEmailKeyboard ? k3DColor : k9DColor,
                //             ),
                //           ),
                //         ),
                //       ),
                //     ),
                //     Container(
                //       width: MediaQuery.of(context).size.width * 0.2,
                //       height: MediaQuery.of(context).size.height * 0.05,
                //       child: Center(
                //         child: InkWell(
                //           onTap: () {},
                //           child: Text(
                //             "인증하기",
                //             style: TextStyle(
                //               color: _isEmailKeyboard ? k3DColor : k9DColor,
                //               fontSize: size14,
                //               fontWeight: FontWeight.bold,
                //             ),
                //           ),
                //         ),
                //       ),
                //     )
                //   ],
                // ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.065,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: kEEColor),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: TextFormField(
                            focusNode: _emailFocusNode,
                            style: TextStyle(
                              decorationThickness: 0,
                              color: _isEmailKeyboard ? k3DColor : k9DColor,
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "이메일",
                              hintStyle: TextStyle(
                                color: k9DColor,
                                fontSize: size14,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: Center(
                          child: InkWell(
                            onTap: () {},
                            child: Text(
                              "인증하기",
                              style: TextStyle(
                                color: _isEmailKeyboard ? k3DColor : k9DColor,
                                fontSize: size14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                // Row(
                //   children: [
                //     Expanded(
                //       child: TextFormField(
                //         focusNode: _emailAuthFocusNode,
                //         style: TextStyle(
                //           decorationThickness: 0,
                //           color: _isEmailAuthKeyboard ? k3DColor : k9DColor,
                //         ),
                //         decoration: InputDecoration(
                //           border: InputBorder.none,
                //           hintText: "인증번호",
                //           hintStyle: TextStyle(
                //             color: k9DColor,
                //             fontSize: size14,
                //           ),
                //           focusedBorder: UnderlineInputBorder(
                //             borderSide: BorderSide(
                //               color: _isEmailAuthKeyboard ? k3DColor : k3DColor,
                //             ),
                //           ),
                //           enabledBorder: UnderlineInputBorder(
                //             borderSide: BorderSide(
                //               color: _isEmailAuthKeyboard ? k3DColor : k9DColor,
                //             ),
                //           ),
                //         ),
                //       ),
                //     ),
                //     Container(
                //       width: MediaQuery.of(context).size.width * 0.2,
                //       height: MediaQuery.of(context).size.height * 0.05,
                //       child: Center(
                //         child: InkWell(
                //           onTap: () {},
                //           child: Text(
                //             "확인",
                //             style: TextStyle(
                //               color: _isEmailAuthKeyboard ? k3DColor : k9DColor,
                //               fontSize: size14,
                //               fontWeight: FontWeight.bold,
                //             ),
                //           ),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.065,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: kEEColor),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: TextFormField(
                            focusNode: _emailAuthFocusNode,
                            style: TextStyle(
                              decorationThickness: 0,
                              color: _isEmailAuthKeyboard ? k3DColor : k9DColor,
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "인증번호",
                              hintStyle: TextStyle(
                                color: k9DColor,
                                fontSize: size14,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: Center(
                          child: InkWell(
                            onTap: () {},
                            child: Text(
                              "확인",
                              style: TextStyle(
                                color:
                                    _isEmailAuthKeyboard ? k3DColor : k9DColor,
                                fontSize: size14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                // TextFormField(
                //   obscureText: true,
                //   focusNode: _passwordFocusNode,
                //   style: TextStyle(
                //     decorationThickness: 0,
                //     color: _isPasswordKeyboard ? k3DColor : k9DColor,
                //   ),
                //   decoration: InputDecoration(
                //     border: InputBorder.none,
                //     hintText: "비밀번호",
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
                          hintText: "비밀번호",
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
                //     hintText: "비밀번호 확인",
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
                          color: _isPasswordCheckKeyboard ? k3DColor : k9DColor,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "비밀번호 확인",
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
                // Container(
                //   height: MediaQuery.of(context).size.height * 0.068,
                //   width: double.infinity,
                //   child: Center(
                //     child: DropdownButton(
                //       underline: Container(
                //         height: 1,
                //         color: k9DColor,
                //       ),
                //       isExpanded: true,
                //       value: phone,
                //       items: phoneList.map((String item) {
                //         return DropdownMenuItem<String>(
                //           child: Padding(
                //             padding: const EdgeInsets.only(bottom: 8.0),
                //             child: Text(
                //               "$item",
                //               style: TextStyle(color: k9DColor),
                //             ),
                //           ),
                //           value: item,
                //         );
                //       }).toList(),
                //       style: TextStyle(color: k3DColor),
                //       onChanged: (dynamic value) {
                //         setState(() {
                //           phone = value;
                //         });
                //       },
                //     ),
                //   ),
                // ),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.065,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: kEEColor),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: DropdownButton(
                        underline: Container(
                          height: 0,
                          color: Colors.transparent,
                        ),
                        isExpanded: true,
                        value: phone,
                        items: phoneList.map((String item) {
                          return DropdownMenuItem<String>(
                            child: Text(
                              "$item",
                              style: TextStyle(color: k9DColor),
                            ),
                            value: item,
                          );
                        }).toList(),
                        style: TextStyle(color: k3DColor),
                        onChanged: (dynamic value) {
                          setState(() {
                            phone = value;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                // TextFormField(
                //   focusNode: _phoneFocusNode,
                //   style: TextStyle(
                //     decorationThickness: 0,
                //     color: _isPhoneKeyboard ? k3DColor : k9DColor,
                //   ),
                //   decoration: InputDecoration(
                //     border: InputBorder.none,
                //     hintText: "휴대폰번호",
                //     hintStyle: TextStyle(
                //       color: k9DColor,
                //       fontSize: size14,
                //     ),
                //     focusedBorder: UnderlineInputBorder(
                //       borderSide: BorderSide(
                //         color: _isPhoneKeyboard ? k3DColor : k3DColor,
                //       ),
                //     ),
                //     enabledBorder: UnderlineInputBorder(
                //       borderSide: BorderSide(
                //         color: _isPhoneKeyboard ? k3DColor : k9DColor,
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
                        focusNode: _phoneFocusNode,
                        style: TextStyle(
                          decorationThickness: 0,
                          color: _isPhoneKeyboard ? k3DColor : k9DColor,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "휴대폰번호",
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
                InkWell(
                  onTap: () {
                    setState(() {
                      newFamily = !newFamily;
                    });
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.check_box_rounded,
                        color: newFamily ? k3DColor : k9DColor,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "새가족 등록",
                        style: TextStyle(
                          color: newFamily ? k3DColor : k9DColor,
                          fontSize: size14,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.15),
                InkWell(
                  onTap: () {
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
                        "회원가입하기",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: size16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _nameFocusNode.dispose();
    _emailFocusNode.dispose();
    _emailAuthFocusNode.dispose();
    _passwordFocusNode.dispose();
    _passwordCheckFocusNode.dispose();
    _phoneFocusNode.dispose();
    super.dispose();
  }
}
