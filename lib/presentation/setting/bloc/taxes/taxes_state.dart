part of 'taxes_bloc.dart';

@freezed
class TaxesState with _$TaxesState {
  const factory TaxesState.initial() = _Initial;
  const factory TaxesState.loading() = _Loading;
  const factory TaxesState.success(List<Tax> tax, int? selected) = _Success;
  const factory TaxesState.error(String message) = _Error;
}
