// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:epos/data/datasources/order_remote_datasource.dart';
import 'package:epos/data/models/request/order_request_model.dart';
import 'package:epos/presentation/order/models/order_menu.dart';

part 'sync_order_bloc.freezed.dart';
part 'sync_order_event.dart';
part 'sync_order_state.dart';

class SyncOrderBloc extends Bloc<SyncOrderEvent, SyncOrderState> {
  final OrderRemoteDatasource orderRemoteDatasource;
  SyncOrderBloc(
    this.orderRemoteDatasource,
  ) : super(const _Initial()) {
    on<_SendOrder>((event, emit) async {
      emit(const SyncOrderState.loading());
      final response = await orderRemoteDatasource.sendOrder(event.order);
      if (response) {
        emit(const SyncOrderState.success());
      } else {
        emit(const SyncOrderState.error('Failed to send order'));
      }
    });
  }
}
