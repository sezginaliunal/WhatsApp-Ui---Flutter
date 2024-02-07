import 'dart:convert';
import 'package:resume/app/data/models/vote.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'http://localhost:3000/api';

  Future<List<Map<String, dynamic>>> getCoins() async {
    final response = await http.get(Uri.parse('$baseUrl/coins'));

    if (response.statusCode == 200) {
      List<dynamic> jsonList = json.decode(response.body);
      List<Map<String, dynamic>> coins =
          jsonList.map((json) => json as Map<String, dynamic>).toList();
      return coins;
    } else {
      throw Exception('Failed to load coins');
    }
  }

  Future<Map<String, dynamic>> postVote(String coinId) async {
    try {
      final VoteRequest voteRequest = VoteRequest(deviceId: '12345678910');

      final response = await http.post(
        Uri.parse('$baseUrl/votes/$coinId/vote'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(voteRequest.toJson()),
      );

      print(response.body);
      print('$baseUrl/votes/$coinId/vote');

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception('Failed to post vote');
      }
    } catch (e) {
      print('Error posting vote: $e');
      throw Exception('Failed to post vote - $e');
    }
  }
}
