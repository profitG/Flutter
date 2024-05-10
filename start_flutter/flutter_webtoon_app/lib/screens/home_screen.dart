import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_webtoon_app/models/webtoon_model.dart';
import 'package:flutter_webtoon_app/services/api_service.dart';
import 'package:flutter_webtoon_app/widget/webtoon_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 1.0,
        toolbarHeight: 48,
        foregroundColor: Colors.green,
        backgroundColor: Colors.white,
        title: const Column(
          children: [
            SizedBox(
              height: 48,
            ),
            // Text(
            //   "오늘의 웹툰",
            //   style: TextStyle(
            //     fontSize: 24,
            //     fontWeight: FontWeight.w600,
            //   ),
            // ),
          ],
        ),
      ),
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Expanded(child: makeList(snapshot)),
              ],
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  ListView makeList(AsyncSnapshot<List<WebtoonModel>> snapshot) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      scrollDirection: Axis.vertical,
      itemCount: snapshot.data!.length,
      itemBuilder: (context, index) {
        var webtoon = snapshot.data![index];
        return Webtoon(
          title: webtoon.title,
          thumb: webtoon.thumb,
          id: webtoon.id,
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        width: 40,
      ),
    );
  }
}
