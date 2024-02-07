import 'package:resume/app/data/models/coin.dart';

class Vote {
  bool? success;
  String? message;
  Coin? coin;
  bool? isVote;

  Vote({this.success, this.message, this.coin, this.isVote});

  factory Vote.fromJson(Map<String, dynamic> json) {
    return Vote(
      success: json['success'],
      message: json['message'],
      coin: json['coin'] != null ? Coin.fromJson(json['coin']) : null,
      isVote: json['isVote'],
    );
  }
}

class VoteRequest {
  String deviceId;

  VoteRequest({
    required this.deviceId,
  });

  Map<String, dynamic> toJson() {
    return {
      'deviceId': deviceId,
    };
  }
}
