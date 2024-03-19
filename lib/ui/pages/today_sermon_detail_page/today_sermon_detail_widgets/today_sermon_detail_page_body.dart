import 'package:church/core/constant/color.dart';
import 'package:church/core/constant/size.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TodaySermonDetailPageBody extends StatelessWidget {
  const TodaySermonDetailPageBody({Key? key});

  @override
  Widget build(BuildContext context) {
    // Replace 'f5nFn1GV6YY' with the actual YouTube video ID you want to play.
    String videoId = 'f5nFn1GV6YY';

    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );

    return ListView(
      children: [
        Container(
          child: YoutubePlayer(
            controller: _controller,
            liveUIColor: Colors.amber, // You can customize the live UI color
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "2023.11.30",
                style: TextStyle(
                  color: kC8Color,
                  fontSize: size12,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Text(
                "넘치는 축복과 감사 [23년 성탄감사예배] / 김철수 목사 / 마태복음 7:7~8",
                style: TextStyle(
                  color: k3DColor,
                  fontSize: size14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Divider(color: kEEColor),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Text(
                "설교 내용이 들어갈 위치입니다.요한 복음 20 : 19 ~ 23“영접하는 자 곧 그 이름을 믿는 자들에게는 하나님의 자녀가 되는 권세를 주셨으니”구절에 대한 설교 내용들이 들어갈 곳입니다. 폰트는 프리텐다드에 Regular고 폰트 사이즈는 14px 입니다.컬러는 #767676을 사용하고 있습니다.이 부분은 앱 관리자가 작성할 부분입니다.",
                style: TextStyle(
                  color: k76Color,
                  fontSize: size14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
