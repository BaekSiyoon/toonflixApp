import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  // await 를 사용하려면 async(비동기)함수 내에서 써야한다.
  // await는 dart한테 결과 값이 올때까지기다리라고 할때 사용 (비동기)
  void getTodaysToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);
      return;
    }
    throw Error();
  }
}
