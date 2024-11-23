import 'package:epos/core/components/buttons.dart';
import 'package:epos/core/components/custom_text_field.dart';
import 'package:epos/core/components/spaces.dart';
import 'package:epos/core/extensions/build_context_ext.dart';
import 'package:epos/presentation/home/bloc/checkout/checkout_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/colors.dart';
import '../../setting/bloc/discount/discount_bloc.dart';

class DiscountDialog extends StatefulWidget {
  const DiscountDialog({super.key});

  @override
  State<DiscountDialog> createState() => _DiscountDialogState();
}

class _DiscountDialogState extends State<DiscountDialog> {
  var discountCode = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<DiscountBloc>().add(const DiscountEvent.getDiscounts());
  }

  @override
  void dispose() {
    discountCode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      title: Stack(
        children: [
          IconButton(
            onPressed: () {
              context
                  .read<CheckoutBloc>()
                  .add(const CheckoutEvent.removeDiscount());
              context.pop();
            },
            icon: const Icon(Icons.highlight_off),
            color: AppColors.primary,
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 12.0),
              child: Text(
                'Pilih Kode Voucher',
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
      content: BlocBuilder<DiscountBloc, DiscountState>(
        builder: (context, state) {
          return state.maybeWhen(orElse: () {
            return Container();
          }, loading: () {
            return const CircularProgressIndicator();
          }, error: (message) {
            return Text(message);
          }, loaded: (discounts, discountSelected) {
            if (discounts.isEmpty) return Container();
            return Column(
              children: discounts
                  .map((discount) => ListTile(
                        title: Text(
                          '${discount.value!.replaceAll('.00', '')}%',
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(discount.name!,
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600)),
                        trailing: Checkbox(
                          value: discount.id == discountSelected,
                          onChanged: (_) {
                            context.read<DiscountBloc>().add(
                                DiscountEvent.selectedDiscounts(discount.id!));
                          },
                        ),
                        onTap: () {
                          context.read<DiscountBloc>().add(
                              DiscountEvent.selectedDiscounts(discount.id!));
                          context
                              .read<CheckoutBloc>()
                              .add(CheckoutEvent.addDiscount(discount));
                          context.pop();
                        },
                      ))
                  .toList(),
            );
          });
          // return Column(
          //   children: [
          //     CustomTextField(
          //       controller: discountCode,
          //       label: '',
          //       showLabel: false,
          //     ),
          //     const SpaceHeight(10),
          //     Button.filled(onPressed: () {}, label: 'Terapkan Kode')
          //   ],
          // );
        },
      ),
    );
  }
}
