import 'package:epos/presentation/home/bloc/checkout/checkout_bloc.dart';
import 'package:epos/presentation/setting/bloc/taxes/taxes_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaxControllPage extends StatefulWidget {
  const TaxControllPage({super.key});

  @override
  State<TaxControllPage> createState() => _TaxControllPageState();
}

class _TaxControllPageState extends State<TaxControllPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<TaxesBloc>().add(const TaxesEvent.getTax());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kelola Pajak'),
        centerTitle: true,
      ),
      body: BlocListener<TaxesBloc, TaxesState>(
        listener: (context, state) {},
        child: BlocBuilder<TaxesBloc, TaxesState>(builder: (context, state) {
          return state.maybeWhen(orElse: () {
            return Center(
              child: Container(),
            );
          }, loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }, error: (message) {
            return Center(
              child: Text(message),
            );
          }, success: (tax, select) {
            if (tax.isEmpty) return Container();
            return Column(
              children: tax
                  .map((e) => ListTile(
                        title: Text('Pajak ${e.value}%'),
                        trailing: Checkbox(
                          value: e.id == select,
                          onChanged: (_) {
                            context
                                .read<TaxesBloc>()
                                .add(TaxesEvent.selectedTax(e.id!));
                          },
                        ),
                        onTap: () {
                          context
                              .read<TaxesBloc>()
                              .add(TaxesEvent.selectedTax(e.id!));
                          if (e.id == select) {
                            context
                                .read<CheckoutBloc>()
                                .add(const CheckoutEvent.setTax(0));
                            return;
                          }
                          context.read<CheckoutBloc>().add(
                              CheckoutEvent.setTax(e.value?.toDouble() ?? 0.0));
                        },
                      ))
                  .toList(),
            );
          });
        }),
      ),
    );
  }
}
