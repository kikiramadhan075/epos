import 'package:epos/core/extensions/build_context_ext.dart';
import 'package:epos/presentation/home/bloc/product/product_bloc.dart';
import 'package:epos/presentation/setting/pages/manage_product_page.dart';
import 'package:epos/presentation/setting/pages/save_server_key_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/components/menu_button.dart';
import '../../../core/components/spaces.dart';
import '../../../core/constants/colors.dart';
import '../../../data/datasources/auth_local_datasource.dart';
import '../../../data/datasources/product_local_datasource.dart';
import '../../auth/pages/login_page.dart';
import '../../home/bloc/logout/logout_bloc.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Setting'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  MenuButton(
                    iconPath: Assets.images.manageProduct.path,
                    label: 'Kelola Produk',
                    onPressed: () => context.push(const ManageProduct()),
                    isImage: true
                  ),
                  const SpaceWidth(15.0),
                  MenuButton(
                    iconPath: Assets.images.managePrinter.path,
                    label: 'Kelola Printer',
                    onPressed:
                        () {}, //=> context.push(const ManagePrinterPage()),
                    isImage: true,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  MenuButton(
                    iconPath: Assets.images.qrisImage.path,
                    label: 'QRIS Server Key',
                    onPressed: () => context.push(const SaveServerKeyPage()),
                    isImage: true,
                  ),
                  const SpaceWidth(15.0),
                  MenuButton(
                    iconPath: Assets.images.managePrinter.path,
                    label: 'Sinkronisasi Data',
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const SyncDataPage()));
                    }, //=> context.push(const ManagePrinterPage()),
                    isImage: true,
                  ),
                ],
              ),
            ),
            const SpaceHeight(60),
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
                          'Sync data success',
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
                        child: const Text('Sync Data'));
                  },
                  loading: () {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                );
              },
            ),
            const Divider(),
            BlocConsumer<LogoutBloc, LogoutState>(
              listener: (context, state) {
                state.maybeMap(
                  orElse: () {},
                  success: (_) {
                    AuthLocalDatasource().removeAuthData();
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                );
              },
              builder: (context, state) {
                return ElevatedButton(
                  onPressed: () {
                    context.read<LogoutBloc>().add(const LogoutEvent.logout());
                  },
                  child: const Text('Logout'),
                );
              },
            ),
            const Divider(),
          ],
        ));
  }
}
