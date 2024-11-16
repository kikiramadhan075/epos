import 'package:epos/core/components/spaces.dart';
import 'package:epos/data/datasources/auth_local_datasource.dart';
import 'package:epos/presentation/home/bloc/product/product_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/colors.dart';
import '../../../data/datasources/product_local_datasource.dart';

class SyncDataPage extends StatefulWidget {
  const SyncDataPage({super.key});

  @override
  State<SyncDataPage> createState() => _SyncDataPageState();
}

class _SyncDataPageState extends State<SyncDataPage> {


  @override
  void initState() {
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sync Data'),
        centerTitle: true,
      ),
      
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          //button unsync data product
          BlocConsumer<ProductBloc, ProductState>(
              listener: (context, state) {
                state.maybeMap(
                  orElse: () {},
                  success: (_) async {
                    await ProductLocalDatasource.instance.removeAllProduct();
                    await ProductLocalDatasource.instance
                        .insertAllProduct(_.products.toList());
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        backgroundColor: AppColors.primary,
                        content: Text(
                          'Sync data product success',
                        )));
                  },
                );
              },
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return ElevatedButton(
                        onPressed: () {
                          context
                              .read<ProductBloc>()
                              .add(const ProductEvent.fetch());
                        },
                        child: const Text('Sync Data Product'));
                  },
                  loading: () {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                );
              },
            ),
          SpaceHeight(20),
          //button sync data order
          ElevatedButton(
            onPressed: () {
              // AuthLocalDatasource()
              //     .saveMidtransServerKey(serverKeyController!.text);
              // ScaffoldMessenger.of(context).showSnackBar(
              //   const SnackBar(
              //     content: Text('Server Key saved'),
              //   ),
              // );
              Navigator.pop(context);
            },
            child: const Text('Simpan'),
          ),
        ],
      ),
    );
  }
}
