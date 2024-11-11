import 'package:epos/data/datasources/auth_local_datasource.dart';
import 'package:epos/data/datasources/auth_remote_datasources.dart';
import 'package:epos/data/datasources/product_remote_datasource.dart';
import 'package:epos/presentation/auth/pages/login_page.dart';
import 'package:epos/presentation/home/bloc/checkout/checkout_bloc.dart';
import 'package:epos/presentation/home/bloc/logout/logout_bloc.dart';
import 'package:epos/presentation/home/bloc/product/product_bloc.dart';
import 'package:epos/presentation/home/pages/dashboard_page.dart';
import 'package:epos/presentation/order/bloc/bloc/order_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/constants/colors.dart';
import 'presentation/auth/bloc/login/login_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(AuthRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => LogoutBloc(AuthRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => ProductBloc(ProductRemoteDatasource())..add(const ProductEvent.fetchLocal()),
        ),
        BlocProvider(
          create: (context) => CheckoutBloc()),
        BlocProvider(
          create: (context) => OrderBloc()),

      ],
      child: MaterialApp(
        title: 'ePOS',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
          useMaterial3: true,
          textTheme: GoogleFonts.quicksandTextTheme(
            Theme.of(context).textTheme,
          ),
          appBarTheme: AppBarTheme(
            color: AppColors.white,
            elevation: 0,
            titleTextStyle: GoogleFonts.quicksand(
              color: AppColors.primary,
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
            iconTheme: const IconThemeData(
              color: AppColors.primary,
            ),
          ),
        ),
        home: FutureBuilder<bool>(
            future: AuthLocalDatasource().isAuth(),
            builder: (context, snapshot) {
              if (snapshot.hasData && snapshot.data == true) {
                return const DashboardPage();
              } else {
                return const LoginPage();
              }
            }),
      ),
    );
  }
}
