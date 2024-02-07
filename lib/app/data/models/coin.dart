
import 'package:flutter/material.dart';

class Coin {
  String? sId;
  String? logo;
  String? coinName;
  String? description;
  String? symbol;
  int? price;
  String? email;
  int? vote;
  String? bnbSmartChain;
  String? ethereum;
  String? solana;
  String? polygon;
  String? avalanche;
  String? arbitrum;
  String? websiteURL;
  String? telegramURL;
  String? twitterURL;
  String? launchDate;
  bool? isApproved;
  int? iV;
  Color? color; // Yeni eklenen color özelliği

  Coin({
    this.sId,
    this.logo,
    this.coinName,
    this.description,
    this.symbol,
    this.price,
    this.email,
    this.vote,
    this.bnbSmartChain,
    this.ethereum,
    this.solana,
    this.polygon,
    this.avalanche,
    this.arbitrum,
    this.websiteURL,
    this.telegramURL,
    this.twitterURL,
    this.launchDate,
    this.isApproved,
    this.iV,
    this.color, // Yeni eklenen color özelliği
  });

  Coin.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    logo = json['logo'];
    coinName = json['coinName'];
    description = json['description'];
    symbol = json['symbol'];
    price = json['price'];
    email = json['email'];
    vote = json['vote'];
    bnbSmartChain = json['bnbSmartChain'];
    ethereum = json['ethereum'];
    solana = json['solana'];
    polygon = json['polygon'];
    avalanche = json['avalanche'];
    arbitrum = json['arbitrum'];
    websiteURL = json['websiteURL'];
    telegramURL = json['telegramURL'];
    twitterURL = json['twitterURL'];
    launchDate = json['launchDate'];
    isApproved = json['isApproved'];
    iV = json['__v'];
    color = Colors.black; // Başlangıçta varsayılan renk
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['logo'] = logo;
    data['coinName'] = coinName;
    data['description'] = description;
    data['symbol'] = symbol;
    data['price'] = price;
    data['email'] = email;
    data['vote'] = vote;
    data['bnbSmartChain'] = bnbSmartChain;
    data['ethereum'] = ethereum;
    data['solana'] = solana;
    data['polygon'] = polygon;
    data['avalanche'] = avalanche;
    data['arbitrum'] = arbitrum;
    data['websiteURL'] = websiteURL;
    data['telegramURL'] = telegramURL;
    data['twitterURL'] = twitterURL;
    data['launchDate'] = launchDate;
    data['isApproved'] = isApproved;
    data['__v'] = iV;
    return data;
  }

  Coin copyWith({
    String? sId,
    String? logo,
    String? coinName,
    String? description,
    String? symbol,
    int? price,
    String? email,
    int? vote,
    String? bnbSmartChain,
    String? ethereum,
    String? solana,
    String? polygon,
    String? avalanche,
    String? arbitrum,
    String? websiteURL,
    String? telegramURL,
    String? twitterURL,
    String? launchDate,
    bool? isApproved,
    int? iV,
    Color? color,
  }) {
    return Coin(
      sId: sId ?? this.sId,
      logo: logo ?? this.logo,
      coinName: coinName ?? this.coinName,
      description: description ?? this.description,
      symbol: symbol ?? this.symbol,
      price: price ?? this.price,
      email: email ?? this.email,
      vote: vote ?? this.vote,
      bnbSmartChain: bnbSmartChain ?? this.bnbSmartChain,
      ethereum: ethereum ?? this.ethereum,
      solana: solana ?? this.solana,
      polygon: polygon ?? this.polygon,
      avalanche: avalanche ?? this.avalanche,
      arbitrum: arbitrum ?? this.arbitrum,
      websiteURL: websiteURL ?? this.websiteURL,
      telegramURL: telegramURL ?? this.telegramURL,
      twitterURL: twitterURL ?? this.twitterURL,
      launchDate: launchDate ?? this.launchDate,
      isApproved: isApproved ?? this.isApproved,
      iV: iV ?? this.iV,
      color: color ?? this.color,
    );
  }
}
