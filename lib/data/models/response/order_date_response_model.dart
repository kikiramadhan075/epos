class OrderDateResponseModel {
  final String? status;
  final List<OrderDateModel>? data;

  OrderDateResponseModel({
    this.status,
    this.data,
  });

  factory OrderDateResponseModel.fromJson(Map<String, dynamic> json) =>
      OrderDateResponseModel(
        status: json["status"],
        data: json["data"] == null
            ? []
            : List<OrderDateModel>.from(
                json["data"]!.map((x) => OrderDateModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class OrderDateModel {
  final int? id;
  final DateTime? transactionTime;
  final int? totalPrice;
  final int? totalItem;
  final int? kasirId;
  final String? paymentMethod;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  OrderDateModel({
    this.id,
    this.transactionTime,
    this.totalPrice,
    this.totalItem,
    this.kasirId,
    this.paymentMethod,
    this.createdAt,
    this.updatedAt,
  });

  factory OrderDateModel.fromJson(Map<String, dynamic> json) => OrderDateModel(
        id: json["id"],
        transactionTime: json["transaction_time"] == null
            ? null
            : DateTime.parse(json["transaction_time"]),
        totalPrice: json["total_price"],
        totalItem: json["total_item"],
        kasirId: json["kasir_id"],
        paymentMethod: json["payment_method"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "transaction_time": transactionTime?.toIso8601String(),
        "total_price": totalPrice,
        "total_item": totalItem,
        "kasir_id": kasirId,
        "payment_method": paymentMethod,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
