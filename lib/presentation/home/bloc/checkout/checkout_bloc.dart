import 'package:bloc/bloc.dart';
import 'package:epos/data/models/response/discount_response_model.dart';
import 'package:epos/data/models/response/tax_response_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/models/response/product_response_model.dart';
import '../../models/order_item.dart';

part 'checkout_event.dart';
part 'checkout_state.dart';
part 'checkout_bloc.freezed.dart';

class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  CheckoutBloc() : super(const _Success([], 0, 0, null, 0)) {
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
      double total;
      for (var element in newCheckout) {
        totalQuantity += element.quantity;
        totalPrice += element.quantity * element.product.price;
      }

      if (currentStates.discount != null) {
        final discountedPrice = totalPrice -
            (totalPrice *
                (double.parse(currentStates.discount?.value ?? '0') / 100));
        total = discountedPrice +
            ((discountedPrice * ((currentStates.tax ?? 0) / 100)));

        emit(_Success(newCheckout, totalQuantity, total.toInt(),
            currentStates.discount, currentStates.tax));
        return;
      }

      total = totalPrice.toDouble() +
          ((totalPrice * ((currentStates.tax ?? 0) / 100)));

      emit(_Success(newCheckout, totalQuantity, total.toInt(),
          currentStates.discount, currentStates.tax));
    });

    on<_RemoveCheckout>((event, emit) {
      var currentStates = state as _Success;
      List<OrderItem> newCheckout = [...currentStates.products];
      print(currentStates.discount);
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
      double total;
      for (var element in newCheckout) {
        totalQuantity += element.quantity;
        totalPrice += element.quantity * element.product.price;
      }

      if (currentStates.discount != null) {
        final discountedPrice = totalPrice -
            (totalPrice *
                (double.parse(currentStates.discount?.value ?? '0') / 100));
        total = discountedPrice +
            ((discountedPrice * ((currentStates.tax ?? 0) / 100)));

        emit(_Success(newCheckout, totalQuantity, total.toInt(),
            currentStates.discount, currentStates.tax));
        return;
      }

      total = totalPrice.toDouble() +
          ((totalPrice * ((currentStates.tax ?? 0) / 100)));
      emit(_Success(newCheckout, totalQuantity, total.toInt(),
          currentStates.discount, currentStates.tax));
    });

    on<_RemoveAllCheckout>((event, emit) {
      var currentStates = state as _Success;
      List<OrderItem> orderItems = [...currentStates.products];

      if (event.product != null) {
        orderItems.removeWhere((item) => item.product == event.product);
      } else {
        orderItems.clear();
      }

      int totalQuantity = 0;
      int totalPrice = 0;
      double total;
      for (var element in orderItems) {
        totalQuantity += element.quantity;
        totalPrice += element.quantity * element.product.price;
      }

      total = totalPrice.toDouble() +
          ((totalPrice * ((currentStates.tax ?? 0) / 100)));

      if (currentStates.discount != null) {
        emit(_Success(orderItems, totalQuantity, total.toInt(),
            currentStates.discount, currentStates.tax));
        return;
      }
      emit(_Success(
          orderItems, totalQuantity, total.toInt(), null, currentStates.tax));
    });

    on<_Started>((event, emit) {
      emit(const _Loading());
      emit(const _Success([], 0, 0, null, 0));
    });

    on<_AddDiscount>((event, emit) {
      var currentStates = state as _Success;

      final originalPrice = currentStates.products.fold(0, (total, item) {
        return total + (item.quantity * item.product.price);
      });

      final discountedPrice = originalPrice -
          (originalPrice * (double.parse(event.discount.value!) / 100));

      final tax = currentStates.tax ?? 0;
      final totalAmount = discountedPrice + (discountedPrice * (tax / 100));

      emit(_Success(currentStates.products, currentStates.totalQuantity,
          totalAmount.toInt(), event.discount, currentStates.tax));
    });

    on<_RemoveDiscount>((event, emit) {
      var currentStates = state as _Success;
      final originalPrice = currentStates.products.fold(0, (total, item) {
        return total + (item.quantity * item.product.price);
      });

      final price =
          originalPrice + (originalPrice * (currentStates.tax ?? 0) / 100);

      emit(_Success(currentStates.products, currentStates.totalQuantity,
          price.toInt(), null, currentStates.tax));
    });

    on<_SetTax>((event, emit) {
      var currentStates = state as _Success;
      final taxValue = event.tax;

      // Hitung ulang total harga
      final originalPrice = currentStates.products.fold(0, (total, item) {
        return total + (item.quantity * item.product.price);
      });

      double total = originalPrice.toDouble();
      if (currentStates.discount != null) {
        final discountedPrice = total -
            (total *
                (double.parse(currentStates.discount?.value ?? '0') / 100));
        total = discountedPrice + (discountedPrice * ((taxValue ?? 0) / 100));
      } else {
        total += ((total * ((taxValue ?? 0) / 100)));
      }

      emit(_Success(currentStates.products, currentStates.totalQuantity,
          total.toInt(), currentStates.discount, event.tax));
    });
  }
}
