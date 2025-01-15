import 'package:bloc/bloc.dart';
import 'package:epos/data/datasources/auth_local_datasource.dart';
import 'package:epos/data/datasources/tax_remote_datasource.dart';
import 'package:epos/data/models/response/tax_response_model.dart';
import 'package:epos/presentation/home/bloc/checkout/checkout_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'taxes_event.dart';
part 'taxes_state.dart';
part 'taxes_bloc.freezed.dart';

class TaxesBloc extends Bloc<TaxesEvent, TaxesState> {
  final TaxRemoteDatasource taxRemoteDatasource;
  final CheckoutBloc checkoutBloc;

  TaxesBloc(this.taxRemoteDatasource, this.checkoutBloc)
      : super(const _Initial()) {
    on<_GetTax>((event, emit) async {
      emit(const _Loading());

      final result = await taxRemoteDatasource.getTax();
      final selected = await AuthLocalDatasource().getTaxId();
      result.fold(
          (l) => emit(_Error(l)), (r) => emit(_Success(r.data!, selected)));
    });

    on<_SelectedTax>((event, emit) async {
      var currentStates = state as _Success;
      emit(const _Loading());

      if (event.selected == currentStates.selected) {
        await AuthLocalDatasource().removeTaxId();
        await AuthLocalDatasource().removeTaxValue();
        emit(_Success(currentStates.tax, null));
      } else {
        final selectTax =
            currentStates.tax.firstWhere((e) => e.id == event.selected);
        await AuthLocalDatasource().setTaxId(event.selected);
        await AuthLocalDatasource().setTaxValue(selectTax.value!);
        emit(_Success(currentStates.tax, event.selected));
      }
    });
  }
}
