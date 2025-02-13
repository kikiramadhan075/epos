part of 'get_order_item_bloc.dart';

@freezed
class GetOrderItemEvent with _$GetOrderItemEvent {
  const factory GetOrderItemEvent.started() = _Started;
  const factory GetOrderItemEvent.getOrderItem(
      String startDate, String endDate) = _GetOrderItem;
}
