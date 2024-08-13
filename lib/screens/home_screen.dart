import 'package:flutter/material.dart';
import 'package:toonflix/models/webtoon_model.dart';
import 'package:toonflix/services/api_service.dart';

class HomeScreen extends StatelessWidget {
  Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: const Text(
          "Today's 툰s",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        elevation: 2, // 그림자 강도 조절
        shadowColor: Colors.grey, // 그림자 색상 조절
      ),
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const Text("data");
          } else {
            return const Text('Loading...');
          }
        },
      ),
    );
  }
}
