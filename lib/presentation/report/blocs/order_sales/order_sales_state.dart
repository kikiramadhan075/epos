part of 'order_sales_bloc.dart';

@freezed
class OrderSalesState with _$OrderSalesState {
  const factory OrderSalesState.initial() = _Initial;
  const factory OrderSalesState.loading() = _Loading;
  const factory OrderSalesState.success(Map<String, double> data) = _Success;
  const factory OrderSalesState.error(String message) = _Error;
}
