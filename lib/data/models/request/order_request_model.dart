import 'package:meta/meta.dart';
import 'dart:convert';

class OrderRequestModel {
    final DateTime transactionTime;
    final int kasirId;
    final int totalPrice;
    final int totalItem;
    final List<OrderItem> orderItems;

    OrderRequestModel({
        required this.transactionTime,
        required this.kasirId,
        required this.totalPrice,
        required this.totalItem,
        required this.orderItems,
    });

    factory OrderRequestModel.fromJson(String str) => OrderRequestModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory OrderRequestModel.fromMap(Map<String, dynamic> json) => OrderRequestModel(
        transactionTime: DateTime.parse(json["transaction_time"]),
        kasirId: json["kasir_id"],
        totalPrice: json["total_price"],
        totalItem: json["total_item"],
        orderItems: List<OrderItem>.from(json["order_items"].map((x) => OrderItem.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "transaction_time": "${transactionTime.year.toString().padLeft(4, '0')}-${transactionTime.month.toString().padLeft(2, '0')}-${transactionTime.day.toString().padLeft(2, '0')}",
        "kasir_id": kasirId,
        "total_price": totalPrice,
        "total_item": totalItem,
        "order_items": List<dynamic>.from(orderItems.map((x) => x.toMap())),
    };
}

class OrderItem {
    final int productId;
    final int quantity;
    final int totalPrice;

    OrderItem({
        required this.productId,
        required this.quantity,
        required this.totalPrice,
    });

    factory OrderItem.fromJson(String str) => OrderItem.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory OrderItem.fromMap(Map<String, dynamic> json) => OrderItem(
        productId: json["product_id"],
        quantity: json["quantity"],
        totalPrice: json["total_price"],
    );

    Map<String, dynamic> toMap() => {
        "product_id": productId,
        "quantity": quantity,
        "total_price": totalPrice,
    };
}
