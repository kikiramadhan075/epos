part of 'sync_order_bloc.dart';

@freezed
class SyncOrderEvent with _$SyncOrderEvent {
  const factory SyncOrderEvent.started() = _Started;
  //send order
  const factory SyncOrderEvent.sendOrder(OrderRequestModel order) = _SendOrder;
}
