// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:epos/core/components/spaces.dart';
import 'package:epos/data/models/response/order_sales_response_model.dart';
import 'package:epos/presentation/report/blocs/order_sales/order_sales_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pie_chart/pie_chart.dart';

class ProductSalesReport extends StatefulWidget {
  final String startDate;
  final String endDate;
  const ProductSalesReport({
    Key? key,
    required this.startDate,
    required this.endDate,
  }) : super(key: key);

  @override
  State<ProductSalesReport> createState() => _ProductSalesReportState();
}

class _ProductSalesReportState extends State<ProductSalesReport> {
  @override
  void initState() {
    super.initState();
    context.read<OrderSalesBloc>().add(
          OrderSalesEvent.getOrderSales(
            widget.startDate,
            widget.endDate,
          ),
        );
  }

  final colorList = <Color>[
    const Color(0xfffdcb6e),
    const Color(0xff0984e3),
    const Color(0xfffd79a8),
    const Color(0xffe17055),
    const Color(0xff6c5ce7),
    const Color(0xfff0932b),
    const Color(0xff6ab04c),
    const Color(0xfff8a5c2),
    const Color(0xffe84393),
    const Color(0xfffd79a8),
    const Color(0xffa29bfe),
    const Color(0xff00b894),
    const Color(0xffe17055),
    const Color(0xffd63031),
    const Color(0xffa29bfe),
    const Color(0xff6c5ce7),
    const Color(0xff00cec9),
    const Color(0xfffad390),
    const Color(0xff686de0),
    const Color(0xfffdcb6e),
    const Color(0xff0984e3),
    const Color(0xfffd79a8),
    const Color(0xffe17055),
    const Color(0xff6c5ce7),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Product Sales Report"),
          actions: const [],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Card(
            color: const Color.fromARGB(255, 255, 255, 255),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Column(
                children: [
                  BlocBuilder<OrderSalesBloc, OrderSalesState>(
                    builder: (context, state) {
                      return state.maybeWhen(orElse: () {
                        return SizedBox.shrink();
                      }, loading: () {
                        return Center(
                          child: const CircularProgressIndicator(),
                        );
                      }, success: (data) {
                        if (data.isEmpty) {
                          return Center(
                            child: Text("No Data"),
                          );
                        }
                        return PieChart(
                          dataMap: data,
                          animationDuration: Duration(milliseconds: 800),
                          chartLegendSpacing: 12,
                          chartRadius: MediaQuery.of(context).size.width,
                          colorList: colorList,
                          initialAngleInDegree: 0,
                          chartType: ChartType.disc,
                          ringStrokeWidth: 32,
                          legendOptions: LegendOptions(
                            showLegendsInRow: false,
                            legendPosition: LegendPosition.right,
                            showLegends: true,
                            legendShape: BoxShape.circle,
                            legendTextStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          chartValuesOptions: ChartValuesOptions(
                            showChartValueBackground: true,
                            showChartValues: true,
                            showChartValuesInPercentage: false,
                            showChartValuesOutside: false,
                            decimalPlaces: 0,
                            chartValueStyle:
                                TextStyle(color: Colors.black, fontSize: 8),
                          ),
                        );
                      });
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
