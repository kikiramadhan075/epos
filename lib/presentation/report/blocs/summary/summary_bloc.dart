import 'package:epos/data/datasources/order_remote_datasource.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'summary_event.dart';
part 'summary_state.dart';
part 'summary_bloc.freezed.dart';

class SummaryBloc extends Bloc<SummaryEvent, SummaryState> {
  final OrderRemoteDatasource datasource;
  SummaryBloc(this.datasource) : super(_Initial()) {
    on<_GetSummary>((event, emit) async {
      emit(_Loading());
      final result =
          await datasource.getOrderSummaryDate(event.startDate, event.endDate);
      if (result != null) {
        emit(_Success(result));
      } else {
        emit(_Error('Failed to get summary'));
      }
    });
  }
}
