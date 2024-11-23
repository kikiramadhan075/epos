import 'package:dartz/dartz.dart';
import 'package:epos/core/constants/variables.dart';
import 'package:epos/data/datasources/auth_local_datasource.dart';
import 'package:epos/data/models/response/discount_response_model.dart';
import 'package:http/http.dart' as http;

class DiscountRemoteDatasource {
  Future<Either<String, DiscountResponseModel>> getDiscount() async {
    final url = Uri.parse('${Variables.baseUrl}/api/api-discounts');
    // final url = Uri.parse('http://10.0.2.2:8000/api/api-discounts');
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.get(url, headers: {
      'Authorization': 'Bearer ${authData.token}',
      'Accept': 'application/json'
    });

    if (response.statusCode == 200) {
      return Right(DiscountResponseModel.fromJson(response.body));
    } else {
      return const Left('Failed to get discount');
    }
  }
}
