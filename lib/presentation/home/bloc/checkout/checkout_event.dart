part of 'checkout_bloc.dart';

@freezed
class CheckoutEvent with _$CheckoutEvent {
  const factory CheckoutEvent.started() = _Started;
  //add Checkout
  const factory CheckoutEvent.addCheckout(Product product) = _AddCheckout;
  //remove Checkout
  const factory CheckoutEvent.removeCheckout(Product product) = _RemoveCheckout;

  //add discount
  const factory CheckoutEvent.addDiscount(Discount discount) = _AddDiscount;
  //remove discount
  const factory CheckoutEvent.removeDiscount() = _RemoveDiscount;
}
