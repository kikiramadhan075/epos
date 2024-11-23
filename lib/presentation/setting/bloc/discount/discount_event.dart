part of 'discount_bloc.dart';

@freezed
class DiscountEvent with _$DiscountEvent {
  const factory DiscountEvent.started() = _Started;
  const factory DiscountEvent.getDiscounts() = _GetDiscounts;
  const factory DiscountEvent.selectedDiscounts(int selected) =
      _SelectedDiscounts;
}
