// To parse this JSON data, do
//
//     final apiExchangRate = apiExchangRateFromJson(jsonString);

import 'dart:convert';

ApiExchangRate apiExchangRateFromJson(String str) =>
    ApiExchangRate.fromJson(json.decode(str));

String apiExchangRateToJson(ApiExchangRate data) => json.encode(data.toJson());

class ApiExchangRate {
  ApiExchangRate({
    required this.base,
    required this.rates,
  });

  String base;
  Map<String, double> rates;

  factory ApiExchangRate.fromJson(Map<String, dynamic> json) => ApiExchangRate(
        base: json["base"],
        rates: Map.from(json["rates"])
            .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
      );

  Map<String, dynamic> toJson() => {
        "base": base,
        "rates": Map.from(rates).map((k, v) => MapEntry<String, dynamic>(k, v)),
      };
}
