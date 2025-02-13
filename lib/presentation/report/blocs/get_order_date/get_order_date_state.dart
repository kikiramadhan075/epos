part of 'get_order_date_bloc.dart';

@freezed
class GetOrderDateState with _$GetOrderDateState {
  const factory GetOrderDateState.initial() = _Initial;
  const factory GetOrderDateState.loading() = _Loading;
  const factory GetOrderDateState.success(OrderDateResponseModel data) =
      _Success;
  const factory GetOrderDateState.error(String message) = _Error;
}
