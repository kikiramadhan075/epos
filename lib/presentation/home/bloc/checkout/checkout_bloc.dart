import 'package:bloc/bloc.dart';
import 'package:epos/data/models/response/discount_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/models/response/product_response_model.dart';
import '../../models/order_item.dart';

part 'checkout_event.dart';
part 'checkout_state.dart';
part 'checkout_bloc.freezed.dart';

class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  CheckoutBloc() : super(const _Success([], 0, 0, null)) {
    on<_AddCheckout>((event, emit) {
      var currentStates = state as _Success;
      List<OrderItem> newCheckout = [...currentStates.products];
      emit(const _Loading());
      if (newCheckout.any((element) => element.product == event.product)) {
        var index = newCheckout
            .indexWhere((element) => element.product == event.product);
        newCheckout[index].quantity++;
      } else {
        newCheckout.add(OrderItem(product: event.product, quantity: 1));
      }

      // int totalQuantity = newCheckout.fold(0, (previousValue, element) => previousValue + element.quantity);
      int totalQuantity = 0;
      int totalPrice = 0;
      for (var element in newCheckout) {
        totalQuantity += element.quantity;
        totalPrice += element.quantity * element.product.price;
      }

      if (currentStates.discount != null) {
        final discountedPrice = totalPrice -
            (totalPrice *
                (double.parse(currentStates.discount?.value ?? '0') / 100));
        emit(_Success(newCheckout, totalQuantity, discountedPrice.toInt(),
            currentStates.discount));
        return;
      }

      emit(_Success(
          newCheckout, totalQuantity, totalPrice, currentStates.discount));
    });

    on<_RemoveCheckout>((event, emit) {
      var currentStates = state as _Success;
      List<OrderItem> newCheckout = [...currentStates.products];
      emit(const _Loading());
      if (newCheckout.any((element) => element.product == event.product)) {
        var index = newCheckout
            .indexWhere((element) => element.product == event.product);
        if (newCheckout[index].quantity > 1) {
          newCheckout[index].quantity--;
        } else {
          newCheckout.removeAt(index);
        }
      }

      // int totalQuantity = newCheckout.fold(0, (previousValue, element) => previousValue + element.quantity);
      int totalQuantity = 0;
      int totalPrice = 0;
      for (var element in newCheckout) {
        totalQuantity += element.quantity;
        totalPrice += element.quantity * element.product.price;
      }

      if (currentStates.discount != null) {
        final discountedPrice = totalPrice -
            (totalPrice *
                (double.parse(currentStates.discount?.value ?? '0') / 100));
        emit(_Success(newCheckout, totalQuantity, discountedPrice.toInt(),
            currentStates.discount));
        return;
      }

      emit(_Success(
          newCheckout, totalQuantity, totalPrice, currentStates.discount));
    });

    on<_Started>((event, emit) {
      emit(const _Loading());
      emit(const _Success([], 0, 0, null));
    });

    on<_AddDiscount>((event, emit) {
      var currentStates = state as _Success;
      final discountedPrice = currentStates.totalPrice -
          (currentStates.totalPrice *
              (double.parse(event.discount.value!) / 100));

      emit(_Success(currentStates.products, currentStates.totalQuantity,
          discountedPrice.toInt(), event.discount));
    });

    on<_RemoveDiscount>((event, emit) {
      var currentStates = state as _Success;
      final originalPrice = currentStates.products.fold(0, (total, item) {
        return total + (item.quantity * item.product.price);
      });

      emit(_Success(currentStates.products, currentStates.totalQuantity,
          originalPrice, null));
    });
  }
}
