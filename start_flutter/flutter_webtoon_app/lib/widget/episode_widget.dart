import 'package:flutter/material.dart';
import 'package:flutter_webtoon_app/models/webtoon_episode_model.dart';
import 'package:url_launcher/url_launcher_string.dart';

class EpisodeWidget extends StatelessWidget {
  const EpisodeWidget({
    super.key,
    required this.episode,
    required this.webtoon_id,
  });

  onButtonTop() async {
    await launchUrlString(
        "https://comic.naver.com/webtoon/detail?titleId=$webtoon_id&no=${episode.id}");
  }

  final String webtoon_id;
  final WebtoonEpisodeModel episode;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onButtonTop,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 3),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            border: Border.all(color: Colors.green.shade400)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                episode.title,
                style: TextStyle(
                  color: Colors.green.shade400,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.arrow_right_rounded,
                color: Colors.green.shade400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
