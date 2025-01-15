import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:epos/data/datasources/auth_local_datasource.dart';
import 'package:http/http.dart' as http;

import 'package:epos/data/models/response/auth_response_model.dart';
import '../../core/constants/variables.dart';

class AuthRemoteDatasource {
  Future<Either<String, AuthResponseModel>> login(
    String email,
    String password,
  ) async {
    final response =
        await http.post(Uri.parse('${Variables.baseUrl}/api/login'), body: {
      'email': email,
      'password': password,
    }, headers: {
      'accept': 'application/json'
    });
    final datas = jsonDecode(response.body);

    if (response.statusCode == 200) {
      return right(AuthResponseModel.fromJson(response.body));
    } else {
      if (datas['message'] is List) return left(datas['message'][0]);
      return left(datas['message']);
    }
  }

  Future<Either<String, String>> logout() async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/logout'),
      headers: {
        'Authorization': 'Bearer ${authData.token}',
      },
    );
    if (response.statusCode == 200) {
      return right(response.body);
    } else {
      return left(response.body);
    }
  }
}
