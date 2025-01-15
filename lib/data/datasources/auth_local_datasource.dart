import 'package:epos/data/models/response/auth_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthLocalDatasource {
  Future<void> saveAuthData(AuthResponseModel authResponseModel) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('auth_data', authResponseModel.toJson());
  }

  Future<void> removeAuthData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('auth_data');
  }

  Future<AuthResponseModel> getAuthData() async {
    final prefs = await SharedPreferences.getInstance();
    final authData = prefs.getString('auth_data');

    return AuthResponseModel.fromJson(authData!);
  }

  Future<bool> isAuth() async {
    final prefs = await SharedPreferences.getInstance();
    final authData = prefs.getString('auth_data');

    return authData != null;
  }

  Future<void> saveMidtransServerKey(String serverKey) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('server_key', serverKey);
  }

  //get midtrans server key
  Future<String> getMitransServerKey() async {
    final prefs = await SharedPreferences.getInstance();
    final serverKey = prefs.getString('server_key');
    return serverKey ?? '';
  }

  // Tax id and value
  Future<void> setTaxId(int id) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('tax_id', id);
  }

  Future<int> getTaxId() async {
    final prefs = await SharedPreferences.getInstance();
    final taxId = prefs.getInt('tax_id');
    return taxId ?? 0;
  }

  Future<void> removeTaxId() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('tax_id');
  }

  Future<void> setTaxValue(int value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('tax_value', value);
  }

  Future<int> getTaxValue() async {
    final prefs = await SharedPreferences.getInstance();
    final value = prefs.getInt('tax_value');
    return value ?? 0;
  }

  Future<void> removeTaxValue() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('tax_value');
  }
}
