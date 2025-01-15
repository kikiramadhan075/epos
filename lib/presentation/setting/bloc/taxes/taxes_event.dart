part of 'taxes_bloc.dart';

@freezed
class TaxesEvent with _$TaxesEvent {
  const factory TaxesEvent.started() = _Started;
  const factory TaxesEvent.getTax() = _GetTax;
  const factory TaxesEvent.selectedTax(int selected) = _SelectedTax;
}
