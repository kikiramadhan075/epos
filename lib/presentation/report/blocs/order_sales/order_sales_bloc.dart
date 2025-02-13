import 'package:epos/data/datasources/order_remote_datasource.dart';
import 'package:epos/data/models/response/order_sales_response_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_sales_event.dart';
part 'order_sales_state.dart';
part 'order_sales_bloc.freezed.dart';

class OrderSalesBloc extends Bloc<OrderSalesEvent, OrderSalesState> {
  final OrderRemoteDatasource datasource;
  OrderSalesBloc(this.datasource) : super(_Initial()) {
    on<_GetOrderSales>((event, emit) async {
      emit(_Loading());
      final response =
          await datasource.getOrderSales(event.startDate, event.endDate);
      if (response != null) {
        Map<String, double> datas = {};
        for (var data in response.data!) {
          datas[data.productName ?? 'Unknown'] =
              double.parse(data.totalQuantity!);
        }
        emit(_Success(datas));
      } else {
        emit(_Error("Failed to get order sales"));
      }
    });
  }
}
