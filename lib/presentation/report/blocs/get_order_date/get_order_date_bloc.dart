import 'package:epos/data/datasources/order_remote_datasource.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:epos/data/models/response/order_date_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_order_date_event.dart';
part 'get_order_date_state.dart';
part 'get_order_date_bloc.freezed.dart';

class GetOrderDateBloc extends Bloc<GetOrderDateEvent, GetOrderDateState> {
  final OrderRemoteDatasource datasource;

  GetOrderDateBloc(this.datasource) : super(const _Initial()) {
    on<_GetOrderDate>(
      (event, emit) async {
        emit(const _Loading());
        final result =
            await datasource.getOrderDate(event.startDate, event.endDate);
        if (result != null) {
          emit(_Success(result));
        } else {
          emit(_Error('Failed to get order date'));
        }
      },
    );
  }
}
