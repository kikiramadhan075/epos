import 'dart:convert';

class TaxModelResponse {
  final String? status;
  final List<Tax>? data;

  TaxModelResponse({
    this.status,
    this.data,
  });

  factory TaxModelResponse.fromRawJson(String str) =>
      TaxModelResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TaxModelResponse.fromJson(Map<String, dynamic> json) =>
      TaxModelResponse(
        status: json["status"],
        data: json["data"] == null
            ? []
            : List<Tax>.from(json["data"]!.map((x) => Tax.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Tax {
  final int? id;
  final int? value;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Tax({
    this.id,
    this.value,
    this.createdAt,
    this.updatedAt,
  });

  factory Tax.fromRawJson(String str) => Tax.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Tax.fromJson(Map<String, dynamic> json) => Tax(
        id: json["id"],
        value: json["value"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "value": value,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
