import 'package:epos/core/components/buttons.dart';
import 'package:epos/presentation/home/bloc/checkout/checkout_bloc.dart';
import 'package:epos/presentation/home/models/order_item.dart';
import 'package:epos/presentation/order/widgets/discount_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/components/menu_button.dart';
import '../../../core/components/spaces.dart';
import '../bloc/order/order_bloc.dart';
import '../models/order_model.dart';
import '../widgets/order_card.dart';
import '../widgets/payment_cash_dialog.dart';
import '../widgets/payment_qris_dialog.dart';
import '../widgets/procces_button.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final indexValue = ValueNotifier(0);

  List<OrderItem> orders = [];
  int totalPrice = 0;
  String diskon = '';
  int calculateTotalPrice(List<OrderItem> orders) {
    return orders.fold(
        0,
        (previousValue, element) =>
            previousValue + element.product.price * element.quantity);
  }

  @override
  Widget build(BuildContext context) {
    const paddingHorizontal = EdgeInsets.symmetric(horizontal: 16.0);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Detail'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              context
                  .read<CheckoutBloc>()
                  .add(const CheckoutEvent.removeAllCheckout(null));
            },
            icon: Assets.icons.delete.svg(),
          ),
        ],
      ),
      body: BlocBuilder<CheckoutBloc, CheckoutState>(
        builder: (context, state) {
          return state.maybeWhen(orElse: () {
            return const Center(child: Text('Belum ada pesanan'));
          }, success: (data, qty, total, discount) {
            if (data.isEmpty) {
              return const Center(
                child: Text('Belum ada pesanan'),
              );
            }
            // orders = data;
            totalPrice = total;
            diskon = discount?.value!.replaceAll('.00', '') ?? '0';
            return ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              itemCount: data.length,
              separatorBuilder: (context, index) => const SpaceHeight(20.0),
              itemBuilder: (context, index) => OrderCard(
                padding: paddingHorizontal,
                data: data[index],
                discount: double.parse(discount?.value ?? '0'),
                onDeleteTap: () {
                  context.read<CheckoutBloc>().add(
                      CheckoutEvent.removeAllCheckout(data[index].product));
                  // orders.removeAt(index);
                  // setState(() {});
                },
              ),
            );
          });
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Button.filled(
                onPressed: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) => const DiscountDialog());
                },
                label: 'Pilih Kode Voucher'),
            const SpaceHeight(10),
            BlocBuilder<CheckoutBloc, CheckoutState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return const SizedBox.shrink();
                  },
                  success: (data, qty, total, discount) {
                    return ValueListenableBuilder(
                      valueListenable: indexValue,
                      builder: (context, value, _) => Row(
                        children: [
                          const SpaceWidth(10.0),
                          MenuButton(
                            iconPath: Assets.icons.cash.path,
                            label: 'Tunai',
                            isActive: value == 1,
                            onPressed: () {
                              indexValue.value = 1;
                              context.read<OrderBloc>().add(
                                  OrderEvent.addPaymentMethod('Tunai', data));
                            },
                          ),
                          const SpaceWidth(10.0),
                          MenuButton(
                            iconPath: Assets.icons.qrCode.path,
                            label: 'QRIS',
                            isActive: value == 2,
                            onPressed: () {
                              indexValue.value = 2;
                              context.read<OrderBloc>().add(
                                  OrderEvent.addPaymentMethod('QRIS', data));
                            },
                          ),
                          const SpaceWidth(10.0),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
            const SpaceHeight(20.0),
            ProcessButton(
              price: 0,
              onPressed: () async {
                if (indexValue.value == 0) {
                } else if (indexValue.value == 1) {
                  showDialog(
                    context: context,
                    builder: (context) => PaymentCashDialog(
                      price: totalPrice,
                      diskon: diskon,
                    ),
                  );
                } else if (indexValue.value == 2) {
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) => PaymentQrisDialog(
                      price: totalPrice,
                      diskon: diskon,
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
