import 'package:flutter/material.dart';
import 'package:flutter_webtoon_app/styles/style_theme.dart';

class UpTag extends StatelessWidget {
  const UpTag({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: const Alignment(0, 0),
      margin: const EdgeInsets.only(right: 3.0),
      width: 18,
      height: 16,
      decoration: BoxDecoration(border: Border.all(color: ColorStyles.blue)),
      child: const Text(
        'UP',
        style: TextStyle(
          fontSize: 8,
          fontWeight: FontWeight.w400,
          color: ColorStyles.blue,
        ),
      ),
    );
  }
}

class NewTag extends StatelessWidget {
  const NewTag({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: const Alignment(0, 0),
      margin: const EdgeInsets.only(right: 3.0),
      width: 24,
      height: 16,
      decoration: const BoxDecoration(color: ColorStyles.blue),
      child: const Text(
        'NEW',
        style: TextStyle(
          fontSize: 8,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
      ),
    );
  }
}
