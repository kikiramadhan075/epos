part of 'get_order_date_bloc.dart';

@freezed
class GetOrderDateEvent with _$GetOrderDateEvent {
  const factory GetOrderDateEvent.started() = _Started;
  const factory GetOrderDateEvent.getOrderDate(
      String startDate, String endDate) = _GetOrderDate;
}
