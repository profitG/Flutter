import 'package:flutter/material.dart';
import 'package:flutter_webtoon_app/screens/detail_screen.dart';
import 'package:flutter_webtoon_app/styles/style_theme.dart';
import 'package:flutter_webtoon_app/widget/up_new_tag.dart';

class Webtoon extends StatelessWidget {
  final String title, thumb, id;

  const Webtoon({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              title: title,
              thumb: thumb,
              id: id,
            ),
            //fullscreenDialog: true,
          ),
        );
      },
      child: Row(
        children: [
          Hero(
            tag: id,
            child: Container(
              width: 66,
              height: 92,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                border: Border.all(
                  color: ColorStyles.lgray,
                  width: 1.0,
                ),
                //borderRadius: BorderRadius.circular(10),
              ),
              child: Image.network(
                thumb,
                headers: const {
                  "User-Agent":
                      "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
                },
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const NewTag(),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                id,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              SumInfo(id: id),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Container(
                    height: 14,
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    color: ColorStyles.gray,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1),
                    ),
                    child: const Text(
                      "새 미리풀기 3호",
                      style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class SumInfo extends StatelessWidget {
  const SumInfo({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.only(right: 8.0),
          child: Text(
            "총$id화",
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(right: 8.0),
          child: Text(
            "($id결)",
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ],
    );
  }
}
