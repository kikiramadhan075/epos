class OrderItemResponseModel {
  final String? status;
  final List<OrderItemModel>? data;

  OrderItemResponseModel({
    this.status,
    this.data,
  });

  factory OrderItemResponseModel.fromJson(Map<String, dynamic> json) =>
      OrderItemResponseModel(
        status: json["status"],
        data: json["data"] == null
            ? []
            : List<OrderItemModel>.from(
                json["data"]!.map((x) => OrderItemModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class OrderItemModel {
  final int? id;
  final int? orderId;
  final int? productId;
  final int? quantity;
  final int? totalPrice;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? productName;

  OrderItemModel({
    this.id,
    this.orderId,
    this.productId,
    this.quantity,
    this.totalPrice,
    this.createdAt,
    this.updatedAt,
    this.productName,
  });

  factory OrderItemModel.fromJson(Map<String, dynamic> json) => OrderItemModel(
        id: json["id"],
        orderId: json["order_id"],
        productId: json["product_id"],
        quantity: json["quantity"],
        totalPrice: json["total_price"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        productName: json["product_name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "order_id": orderId,
        "product_id": productId,
        "quantity": quantity,
        "total_price": totalPrice,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "product_name": productName,
      };
}
