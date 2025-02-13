import 'package:epos/data/datasources/order_remote_datasource.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:epos/data/models/response/order_item_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_order_item_event.dart';
part 'get_order_item_state.dart';
part 'get_order_item_bloc.freezed.dart';

class GetOrderItemBloc extends Bloc<GetOrderItemEvent, GetOrderItemState> {
  final OrderRemoteDatasource datasource;
  GetOrderItemBloc(this.datasource) : super(_Initial()) {
    on<_GetOrderItem>((event, emit) async {
      emit(const GetOrderItemState.loading());
      final result = await datasource.getOrderItemByDate(
        event.startDate,
        event.endDate,
      );
      if (result != null) {
        emit(GetOrderItemState.success(result));
      } else {
        emit(const _Error('Get Order Item Failed'));
      }
    });
  }
}
