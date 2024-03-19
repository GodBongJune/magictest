import 'package:church/core/constant/move.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/color.dart';
import '../../../../core/constant/size.dart';

class FindPasswordPageBody extends StatefulWidget {
  const FindPasswordPageBody({super.key});

  @override
  State<FindPasswordPageBody> createState() => _FindPasswordPageBodyState();
}

class _FindPasswordPageBodyState extends State<FindPasswordPageBody> {
  List<String> phoneList = <String>["SKT", "KT", "LG", "알뜰폰"];
  String phone = "SKT";

  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _phoneFocusNode = FocusNode();
  final FocusNode _phoneAuthFocusNode = FocusNode();

  bool _isEmailKeyboard = false;
  bool _isNameKeyboard = false;
  bool _isPhoneKeyboard = false;
  bool _isPhoneAuthKeyboard = false;

  @override
  void initState() {
    super.initState();

    _emailFocusNode.addListener(() {
      setState(() {
        _isEmailKeyboard = _emailFocusNode.hasFocus;
      });
    });

    _nameFocusNode.addListener(() {
      setState(() {
        _isNameKeyboard = _nameFocusNode.hasFocus;
      });
    });

    _phoneFocusNode.addListener(() {
      setState(() {
        _isPhoneKeyboard = _phoneFocusNode.hasFocus;
      });
    });

    _phoneAuthFocusNode.addListener(() {
      setState(() {
        _isPhoneAuthKeyboard = _phoneAuthFocusNode.hasFocus;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                // TextFormField(
                //   focusNode: _emailFocusNode,
                //   style: TextStyle(
                //     decorationThickness: 0,
                //     color: _isEmailKeyboard ? k3DColor : k9DColor,
                //   ),
                //   decoration: InputDecoration(
                //     border: InputBorder.none,
                //     hintText: "아이디 (이메일주소)",
                //     hintStyle: TextStyle(
                //       color: k9DColor,
                //       fontSize: size14,
                //     ),
                //     focusedBorder: UnderlineInputBorder(
                //       borderSide: BorderSide(
                //         color: _isEmailKeyboard ? k3DColor : k3DColor,
                //       ),
                //     ),
                //     enabledBorder: UnderlineInputBorder(
                //       borderSide: BorderSide(
                //         color: _isEmailKeyboard ? k3DColor : k9DColor,
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
                        focusNode: _emailFocusNode,
                        style: TextStyle(
                          decorationThickness: 0,
                          color: _isEmailKeyboard ? k3DColor : k9DColor,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "아이디 (이메일주소)",
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
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0),
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
                // Container(
                //   height: MediaQuery.of(context).size.height * 0.068,
                //   width: double.infinity,
                //   child: DropdownButton(
                //     underline: Container(
                //       height: 1,
                //       color: k9DColor,
                //     ),
                //     isExpanded: true,
                //     value: phone,
                //     items: phoneList.map((String item) {
                //       return DropdownMenuItem<String>(
                //         child: Text(
                //           "$item",
                //           style: TextStyle(color: k9DColor),
                //         ),
                //         value: item,
                //       );
                //     }).toList(),
                //     style: TextStyle(color: k3DColor),
                //     onChanged: (dynamic value) {
                //       setState(() {
                //         phone = value;
                //       });
                //     },
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
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                // Row(
                //   children: [
                //     Expanded(
                //       child: TextFormField(
                //         focusNode: _phoneFocusNode,
                //         style: TextStyle(
                //           decorationThickness: 0,
                //           color: _isPhoneKeyboard ? k3DColor : k9DColor,
                //         ),
                //         decoration: InputDecoration(
                //           border: InputBorder.none,
                //           hintText: "'-'없이 휴대폰 번호 입력",
                //           hintStyle: TextStyle(
                //             color: k9DColor,
                //             fontSize: size14,
                //           ),
                //           focusedBorder: UnderlineInputBorder(
                //             borderSide: BorderSide(
                //               color: _isPhoneKeyboard ? k3DColor : k3DColor,
                //             ),
                //           ),
                //           enabledBorder: UnderlineInputBorder(
                //             borderSide: BorderSide(
                //               color: _isPhoneKeyboard ? k3DColor : k9DColor,
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
                //           onTap: () {
                //             ScaffoldMessenger.of(context).showSnackBar(
                //               SnackBar(
                //                 backgroundColor: k77Color,
                //                 content: Container(
                //                   height:
                //                       MediaQuery.of(context).size.height * 0.03,
                //                   child: Center(
                //                     child: Text(
                //                       "인증번호를 요청했습니다",
                //                       style: TextStyle(
                //                         color: Colors.white,
                //                         fontSize: size14,
                //                         fontWeight: FontWeight.bold,
                //                       ),
                //                     ),
                //                   ),
                //                 ),
                //                 duration: Duration(seconds: 1),
                //                 margin: EdgeInsets.only(
                //                   bottom:
                //                       MediaQuery.of(context).size.height * 0.13,
                //                   left: 16,
                //                   right: 16,
                //                 ),
                //                 behavior: SnackBarBehavior.floating,
                //               ),
                //             );
                //           },
                //           child: Text(
                //             "인증하기",
                //             style: TextStyle(
                //               color: _isPhoneKeyboard ? k3DColor : k9DColor,
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
                  child: Center(
                    child: Row(
                      children: [
                        Expanded(
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
                                hintText: "'-'없이 휴대폰 번호 입력",
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
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: k77Color,
                                    content: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.03,
                                      child: Center(
                                        child: Text(
                                          "인증번호를 요청했습니다",
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
                                      bottom:
                                          MediaQuery.of(context).size.height *
                                              0.13,
                                      left: 16,
                                      right: 16,
                                    ),
                                    behavior: SnackBarBehavior.floating,
                                  ),
                                );
                              },
                              child: Text(
                                "인증하기",
                                style: TextStyle(
                                  color: _isPhoneKeyboard ? k3DColor : k9DColor,
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
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                // Row(
                //   children: [
                //     Expanded(
                //       child: TextFormField(
                //         focusNode: _phoneAuthFocusNode,
                //         style: TextStyle(
                //           decorationThickness: 0,
                //           color: _isPhoneAuthKeyboard ? k3DColor : k9DColor,
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
                //               color: _isPhoneAuthKeyboard ? k3DColor : k3DColor,
                //             ),
                //           ),
                //           enabledBorder: UnderlineInputBorder(
                //             borderSide: BorderSide(
                //               color: _isPhoneAuthKeyboard ? k3DColor : k9DColor,
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
                //               color: _isPhoneAuthKeyboard ? k3DColor : k9DColor,
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
                  child: Center(
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: TextFormField(
                              focusNode: _phoneAuthFocusNode,
                              style: TextStyle(
                                decorationThickness: 0,
                                color:
                                    _isPhoneAuthKeyboard ? k3DColor : k9DColor,
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
                                  color: _isPhoneAuthKeyboard
                                      ? k3DColor
                                      : k9DColor,
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
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.popAndPushNamed(
                        context, Move.findPasswordAndChangePage);
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
                        "비밀번호 찾기",
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
    );
  }
}
