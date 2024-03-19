import 'package:church/core/constant/color.dart';
import 'package:church/core/constant/size.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class WorshipLivePageBody extends StatelessWidget {
  const WorshipLivePageBody({super.key});

  @override
  Widget build(BuildContext context) {
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
        SizedBox(height: MediaQuery.of(context).size.height * 0.04),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "실시간 예배 페이지",
              style: TextStyle(
                color: k3DColor,
                fontSize: size20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )
      ],
    );
  }
}
