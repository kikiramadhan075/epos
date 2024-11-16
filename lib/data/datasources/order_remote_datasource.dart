import 'package:epos/core/constants/variables.dart';
import 'package:epos/data/models/request/order_request_model.dart';
import 'package:http/http.dart' as http;

class OrderRemoteDatasource {
  Future<bool> sendOrder(OrderRequestModel requestModel) async {
    final uri = Uri.parse('${Variables.baseUrl}/api/orders');
    final response = await http.post(uri, body: requestModel.toJson());

    if (response.statusCode != 201) {
      return true;
    } else {
      return false;
    }
  }
}
