import 'dart:convert';
import 'dart:developer';

import 'package:epos/core/constants/variables.dart';
import 'package:epos/data/models/request/order_request_model.dart';
import 'package:epos/data/models/response/order_date_response_model.dart';
import 'package:epos/data/models/response/order_item_response_model.dart';
import 'package:epos/data/models/response/order_sales_response_model.dart';
import 'package:http/http.dart' as http;

import 'auth_local_datasource.dart';

class OrderRemoteDatasource {
  Future<bool> sendOrder(OrderRequestModel requestModel) async {
    final url = Uri.parse('${Variables.baseUrl}/api/orders');
    final authData = await AuthLocalDatasource().getAuthData();
    final Map<String, String> headers = {
      'Authorization': 'Bearer ${authData.token}',
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };
    print(requestModel.toJson());
    final response = await http.post(
      url,
      headers: headers,
      body: requestModel.toJson(),
    );
    if (response.statusCode != 201) {
      return true;
    } else {
      return false;
    }
  }

  Future<OrderDateResponseModel?> getOrderDate(
      String startDate, String endDate) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.get(
      Uri.parse(
          '${Variables.baseUrl}/api/orders?start_date=$startDate&end_date=$endDate'),
      headers: {
        'Authorization': 'Bearer ${authData.token}',
      },
    );
    if (response.statusCode == 200) {
      return OrderDateResponseModel.fromJson(jsonDecode(response.body));
    } else {
      return null;
    }
  }

  Future<OrderItemResponseModel?> getOrderItemByDate(
    String startDate,
    String endDate,
  ) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.get(
      Uri.parse(
          '${Variables.baseUrl}/api/order-item?start_date=$startDate&end_date=$endDate'),
      headers: {
        'Authorization': 'Bearer ${authData.token}',
      },
    );
    if (response.statusCode == 200) {
      return OrderItemResponseModel.fromJson(jsonDecode(response.body));
    } else {
      return null;
    }
  }

  Future<OrderSalesResponseModel?> getOrderSales(
      String startDate, String endDate) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.get(
      Uri.parse(
          '${Variables.baseUrl}/api/order-sales?start_date=$startDate&end_date=$endDate'),
      headers: {
        'Authorization': 'Bearer ${authData.token}',
      },
    );
    if (response.statusCode == 200) {
      return OrderSalesResponseModel.fromJson(jsonDecode(response.body));
    } else {
      return null;
    }
  }

  Future<int?> getOrderSummaryDate(String startDate, String endDate) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.get(
      Uri.parse(
          '${Variables.baseUrl}/api/summary?start_date=$startDate&end_date=$endDate'),
      headers: {
        'Authorization': 'Bearer ${authData.token}',
      },
    );
    log(response.body);
    if (response.statusCode == 200) {
      final total = jsonDecode(response.body)['data']['total'];
      return int.parse(total);
    } else {
      return null;
    }
  }
}
