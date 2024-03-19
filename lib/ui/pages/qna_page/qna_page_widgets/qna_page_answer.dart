import 'package:church/core/constant/color.dart';
import 'package:church/core/constant/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class QnAPageAnswer extends StatelessWidget {
  const QnAPageAnswer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Container(
              child: ExpansionTile(
                title: Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 35,
                        height: 35,
                        child: SvgPicture.asset(
                          "assets/images/logo/q.svg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 5),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "문의내용 제목이 입력되는 곳입니다.",
                            style: TextStyle(
                              color: k3DColor,
                              fontSize: size14,
                            ),
                          ),
                          Text(
                            "2024.01.04",
                            style: TextStyle(
                              color: k9DColor,
                              fontSize: size12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                trailing: Text(
                  "답변대기",
                  style: TextStyle(
                    color: kC8Color,
                    fontSize: size14,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: ExpansionTile(
                title: Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      SizedBox(
                        width: 35,
                        height: 35,
                        child: SvgPicture.asset(
                          "assets/images/logo/q.svg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 5),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "문의내용 제목이 입력되는 곳입니다.",
                            style: TextStyle(
                              color: k3DColor,
                              fontSize: size14,
                            ),
                          ),
                          Text(
                            "2024.01.04",
                            style: TextStyle(
                              color: k9DColor,
                              fontSize: size12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                trailing: Text(
                  "답변완료",
                  style: TextStyle(
                    color: kEAColor,
                    fontSize: size14,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text(
                          "문의 제목을 클릭하면 보이는문의한 내용 입니다. 글자는 프리텐다드이고 Regular 굵기에 폰트 사이즈는 14px 로 작성하고 있습니다.\n내용이 길어진다면 이런 느낌으로 작성될 것입니다.\n\n단락을 띄웠을때는 이런 모양이 됩니다.이미치를 첨부하면 이렇게 보입니다.",
                          style: TextStyle(
                            color: k3DColor,
                            fontSize: size14,
                          ),
                        ),
                        SizedBox(height: 10),
                        Image.asset(
                          "assets/images/logo/qnaEx2.png",
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      color: kFAColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 35,
                              width: 35,
                              child: SvgPicture.asset(
                                "assets/images/logo/a.svg",
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                "건의내용에 대한 답변내용이 작성되는 곳입니다.폰트는 프리텐다드 Regular이고 폰트 사이즈는14px 입니다.\n내용이 길어지는 경우의 모습입니다.\n내용이 길어지는 경우의 모습입니다.\n내용이 길어지는 경우의 모습입니다.\n내용이 길어지는 경우의 모습입니다.",
                                style: TextStyle(
                                  color: k3DColor,
                                  fontSize: size14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: ExpansionTile(
                title: Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 35,
                        height: 35,
                        child: SvgPicture.asset(
                          "assets/images/logo/q.svg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 5),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "문의내용 제목이 입력되는 곳입니다.",
                            style: TextStyle(
                              color: k3DColor,
                              fontSize: size14,
                            ),
                          ),
                          Text(
                            "2024.01.04",
                            style: TextStyle(
                              color: k9DColor,
                              fontSize: size12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                trailing: Text(
                  "답변대기",
                  style: TextStyle(
                    color: kC8Color,
                    fontSize: size14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
