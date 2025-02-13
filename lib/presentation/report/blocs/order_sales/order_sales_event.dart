part of 'order_sales_bloc.dart';

@freezed
class OrderSalesEvent with _$OrderSalesEvent {
  const factory OrderSalesEvent.started() = _Started;
  const factory OrderSalesEvent.getOrderSales(
      String startDate, String endDate) = _GetOrderSales;
}
