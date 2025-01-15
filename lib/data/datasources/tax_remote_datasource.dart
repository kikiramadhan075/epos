import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:epos/core/constants/variables.dart';
import 'package:epos/data/datasources/auth_local_datasource.dart';
import 'package:epos/data/models/response/tax_response_model.dart';
import 'package:epos/presentation/home/bloc/checkout/checkout_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class TaxRemoteDatasource {
  // Future<void> getTax(BuildContext context) async {
  //   final url = Uri.parse('${Variables.baseUrl}/api/api-taxes');
  //   final authData = await AuthLocalDatasource().getAuthData();
  //   final response = await http.get(url, headers: {
  //     'Authorization': 'Bearer ${authData.token}',
  //     'Accept': 'application/json'
  //   });

  //   if (response.statusCode == 200) {
  //     final data = jsonDecode(response.body);
  //     double taxValue = (data['data'][0]['value'] ?? 0).toDouble();
  //     context.read<CheckoutBloc>().add(CheckoutEvent.setTax(taxValue));
  //   } else {
  //     print('Failed to get Tax!');
  //   }
  // }
  Future<Either<String, TaxModelResponse>> getTax() async {
    final url = Uri.parse('${Variables.baseUrl}/api/api-taxes');
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.get(url, headers: {
      'Authorization': 'Bearer ${authData.token}',
      'Accept': 'application/json'
    });

    if (response.statusCode == 200) {
      return Right(TaxModelResponse.fromRawJson(response.body));
    } else {
      return const Left('Failed to get Tax!');
    }
  }
}
