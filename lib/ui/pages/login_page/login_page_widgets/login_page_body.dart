import 'package:church/core/constant/color.dart';
import 'package:church/core/constant/move.dart';
import 'package:church/core/constant/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPageBody extends StatefulWidget {
  const LoginPageBody({super.key});

  @override
  State<LoginPageBody> createState() => _LoginPageBodyState();
}

class _LoginPageBodyState extends State<LoginPageBody> {
  bool idSave = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              SvgPicture.asset(
                "assets/images/logo/loginLogo.svg",
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.06),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "이메일",
                    style: TextStyle(
                      color: k3DColor,
                      fontSize: size14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextFormField(
                    style: TextStyle(decorationThickness: 0),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "이메일을 입력하세요.",
                      hintStyle: TextStyle(
                        color: kC8Color,
                        fontSize: size14,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: k3DColor),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: k3DColor),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "비밀번호",
                    style: TextStyle(
                      color: k3DColor,
                      fontSize: size14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    style: TextStyle(decorationThickness: 0),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "비밀번호를 입력하세요.",
                      hintStyle: TextStyle(
                        color: kC8Color,
                        fontSize: size14,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: k3DColor),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: k3DColor),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    idSave = !idSave;
                  });
                },
                child: Row(
                  children: [
                    Checkbox(
                      value: idSave,
                      checkColor: k3DColor,
                      activeColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      side: BorderSide(
                        color: k9DColor,
                        width: 1,
                      ),
                      onChanged: (value) async {
                        setState(() {
                          idSave = value!;
                        });
                      },
                    ),
                    Text("아이디 저장", style: TextStyle(fontSize: size14)),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: InkWell(
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, Move.mainPage, (route) => false);
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
                  "로그인",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: size16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            children: [
              Spacer(),
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                child: Center(
                  child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Move.joinPage);
                      },
                      child: Text(
                        "회원가입",
                        style: TextStyle(color: Colors.black, fontSize: size14),
                      )),
                ),
              ),
              Spacer(),
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                child: Center(
                  child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Move.findEmailPage);
                      },
                      child: Text(
                        "이메일 찾기",
                        style: TextStyle(color: Colors.black, fontSize: size14),
                      )),
                ),
              ),
              Spacer(),
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                child: Center(
                  child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Move.findPasswordPage);
                      },
                      child: Text(
                        "비밀번호 찾기",
                        style: TextStyle(color: Colors.black, fontSize: size14),
                      )),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 1,
                    color: kC8Color,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "간편 로그인",
                    style: TextStyle(color: kC8Color, fontSize: size13),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 1,
                    color: kC8Color,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                "assets/images/sns/google.svg",
                width: MediaQuery.of(context).size.width * 0.11,
                height: MediaQuery.of(context).size.height * 0.06,
              ),
            ),
            InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                "assets/images/sns/kakao.svg",
                width: MediaQuery.of(context).size.width * 0.11,
                height: MediaQuery.of(context).size.height * 0.06,
              ),
            ),
            InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                "assets/images/sns/naver.svg",
                width: MediaQuery.of(context).size.width * 0.11,
                height: MediaQuery.of(context).size.height * 0.06,
              ),
            ),
            InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                "assets/images/sns/apple.svg",
                width: MediaQuery.of(context).size.width * 0.11,
                height: MediaQuery.of(context).size.height * 0.06,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
