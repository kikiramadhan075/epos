class OrderSalesResponseModel {
  final String? status;
  final List<OrderSalesModel>? data;

  OrderSalesResponseModel({
    this.status,
    this.data,
  });

  factory OrderSalesResponseModel.fromJson(Map<String, dynamic> json) =>
      OrderSalesResponseModel(
        status: json["status"],
        data: json["data"] == null
            ? []
            : List<OrderSalesModel>.from(
                json["data"]!.map((x) => OrderSalesModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class OrderSalesModel {
  final int? productId;
  final String? productName;
  final String? totalQuantity;

  OrderSalesModel({
    this.productId,
    this.productName,
    this.totalQuantity,
  });

  factory OrderSalesModel.fromJson(Map<String, dynamic> json) =>
      OrderSalesModel(
        productId: json["product_id"],
        productName: json["product_name"],
        totalQuantity: json["total_quantity"],
      );

  Map<String, dynamic> toJson() => {
        "product_id": productId,
        "product_name": productName,
        "total_quantity": totalQuantity,
      };
}
