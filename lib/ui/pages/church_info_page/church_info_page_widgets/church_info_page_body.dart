import 'package:church/core/constant/color.dart';
import 'package:church/core/constant/size.dart';
import 'package:flutter/material.dart';

class ChurchInfoPageBody extends StatelessWidget {
  const ChurchInfoPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "00 교회에 대한 설명을 적어두는 곳으로 앱 관리자가 직접 관리자페이지에서 작성하는 부분입니다.폰트는 프리텐다드 Regular이고 폰트 크기는 14px로 하였습니다.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: size14,
                ),
              ),
              Image.asset("assets/images/logo/qnaEx2.png"),
              SizedBox(height: 20),
              Text(
                "1. 교회의 비전이나 연혁등을 작성합니다."
                "비전에 대한 설명을 문구를 작성하거나, 소개글을 작성하합니다."
                "\n\n2. 교회의 비전이나 연혁등을 작성합니다."
                "비전에 대한 설명을 문구를 작성하거나, 소개글을 작성하합니다."
                "\n\n3. 교회의 비전이나 연혁등을 작성합니다."
                "비전에 대한 설명을 문구를 작성하거나, 소개글을 작성하합니다.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: size14,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "연혁",
                style: TextStyle(
                    color: k3DColor,
                    fontSize: size20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                "2023",
                style: TextStyle(
                    color: k3DColor,
                    fontSize: size20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "10. 디딤돌 지원 사업 선정\n"
                "09. 2023 부산우수기업 채용박람회 참여\n"
                "07. 여성친화기업 및 여성고용유지지원 협약\n"
                "05. 초기창업패키지 사업자 선정\n\n"
                "2022\n"
                "12. 벤처기업 혁신성장유형 인증\n"
                "09. 성과공유기업 등록\n"
                "08. 서울대 물류산업종사자 건강 모니터링 IoT App개발\n"
                "    GS 자이 SPMS(현장관리) 플랫폼 개발\n"
                "05. KB 국민은행 퇴직연금 ETF App UI 개발\n"
                "    교육개발원 클라우드 VoD 서비스 Admin 개발\n"
                "04. 동물사랑실천운동연합 도라지 앱 런칭\n"
                "    엠바스 기업 부설 연구소 설립\n",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              Text(
                "2022",
                style: TextStyle(
                    color: k3DColor,
                    fontSize: size20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "03. 예비창업 최우수 사업자 선정\n\n"
                "12. 서울교통공사 모바일 인프라 컨설팅 수주\n"
                "11. IoT 기반 환경유해 인지 건강영향 빅데이터 플랫폼 구축 개발\n"
                "    현재 자동차 도장 품질 완결 시스템 개발\n"
                "10. 한국산업기술평가원 모바일 보안제품 납품\n"
                "    인공지능 학습용 데이터 실시간 클라우드 플랫폼 개발\n"
                "    경남은행 TOPS 계정계 시스템 재구축 개발\n"
                "07. 엠바스 법인 설립\n05. 창업진흥원 예비창업자 선정",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "오시는길",
                style: TextStyle(
                    color: k3DColor,
                    fontSize: size20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  "assets/images/logo/map.png",
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "주소 ㅣ 부산 동구 중앙대로 314 3층 4호",
                style: TextStyle(
                  color: k3DColor,
                  fontSize: size14,
                ),
              ),
              Text(
                "교통편 ㅣ 초량역 12번 출구에서 314m\nYMCA 버스 정류장에서 100m 이내",
                style: TextStyle(
                  color: k3DColor,
                  fontSize: size14,
                ),
              ),
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Contact Us",
                    style: TextStyle(
                        color: k3DColor,
                        fontSize: size20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Text(
                        "대표자명.",
                        style: TextStyle(
                          color: k3DColor,
                          fontSize: size14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "김정현",
                        style: TextStyle(
                          color: k3DColor,
                          fontSize: size14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "대표번호.",
                        style: TextStyle(
                          color: k3DColor,
                          fontSize: size14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "010-7640-4707",
                        style: TextStyle(
                          color: k3DColor,
                          fontSize: size14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "대표 이메일.",
                        style: TextStyle(
                          color: k3DColor,
                          fontSize: size14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "mbaas.mkt@gmail.com",
                        style: TextStyle(
                          color: k3DColor,
                          fontSize: size14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "사업자번호.",
                        style: TextStyle(
                          color: k3DColor,
                          fontSize: size14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "128-88-02089",
                        style: TextStyle(
                          color: k3DColor,
                          fontSize: size14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "통신판매업번호.",
                        style: TextStyle(
                          color: k3DColor,
                          fontSize: size14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "2021-0000-0000",
                        style: TextStyle(
                          color: k3DColor,
                          fontSize: size14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
