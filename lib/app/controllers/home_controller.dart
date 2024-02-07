import 'package:resume/app/data/services/api_service.dart';

import 'package:resume/app/data/models/coin.dart';
import 'package:resume/app/data/models/vote.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final ApiService apiService = ApiService();
  final RxList<Coin> coins = <Coin>[].obs;

  @override
  void onInit() {
    super.onInit();
    _fetchCoins();
  }

  Future<void> _fetchCoins() async {
    try {
      final List<Map<String, dynamic>> coinMaps = await apiService.getCoins();
      coins.assignAll(
          coinMaps.map((coinMap) => Coin.fromJson(coinMap)).toList());
    } catch (e) {
      print('Error fetching coins: $e');
    }
  }

  Future<void> postVote(String coinId) async {
    try {
      final Map<String, dynamic> voteResponse =
          await apiService.postVote(coinId);
      final Vote vote = Vote.fromJson(voteResponse);
      updateCoinValues(coinId, vote.isVote ?? true);
    } catch (e) {
      print('Error posting vote: $e');
    }
  }

  void updateCoinValues(String coinId, bool isVote) {
    final int index = coins.indexWhere((coin) => coin.sId == coinId);
    if (index != -1) {
      // Eğer coin bulunduysa
      coins[index].vote =
          isVote ? (coins[index].vote ?? 0) + 1 : (coins[index].vote ?? 0) - 1;
      coins[index].color = isVote ? Colors.green : Colors.red;
    }
    coins.refresh();
  }
}
