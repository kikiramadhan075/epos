part of 'get_order_item_bloc.dart';

@freezed
class GetOrderItemState with _$GetOrderItemState {
  const factory GetOrderItemState.initial() = _Initial;
  const factory GetOrderItemState.loading() = _Loading;
  const factory GetOrderItemState.success(OrderItemResponseModel? data) =
      _Success;
  const factory GetOrderItemState.error(String message) = _Error;
}
