// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:epos/core/components/spaces.dart';
import 'package:epos/core/constants/colors.dart';
import 'package:epos/core/extensions/date_time_ext.dart';
import 'package:epos/core/extensions/int_ext.dart';
import 'package:epos/core/utils/helper_pdf_service.dart';
import 'package:epos/main.dart';
import 'package:epos/presentation/report/blocs/get_order_date/get_order_date_bloc.dart';
import 'package:epos/presentation/report/utils/transaction_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../core/utils/permession_helper.dart';

class TransactionReportPage extends StatefulWidget {
  final String startDate;
  final String endDate;
  const TransactionReportPage({
    Key? key,
    required this.startDate,
    required this.endDate,
  }) : super(key: key);

  @override
  State<TransactionReportPage> createState() => _TransactionReportPageState();
}

class _TransactionReportPageState extends State<TransactionReportPage> {
  @override
  void initState() {
    super.initState();
    context.read<GetOrderDateBloc>().add(
          GetOrderDateEvent.getOrderDate(
            widget.startDate,
            widget.endDate,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transaction Report"),
        actions: const [],
      ),
      body: BlocBuilder<GetOrderDateBloc, GetOrderDateState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return SizedBox.shrink();
            },
            loading: () {
              return Center(
                child: const CircularProgressIndicator(),
              );
            },
            success: (data) {
              final transactionReport = data.data;
              if (transactionReport!.isEmpty) {
                return const Center(
                  child: Text("No data found"),
                );
              }
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () async {
                        final searchDateFormatted =
                            "${widget.startDate} - ${widget.endDate}";
                        final status =
                            await PermessionHelper().checkPermission();
                        if (status.isGranted) {
                          final pdfFile =
                              await TransactionSalesInvoice.generate(
                                  transactionReport, searchDateFormatted);
                          log("pdfFile: $pdfFile");
                          HelperPdfService.openFile(pdfFile);
                        }
                      },
                      child: const Row(
                        children: [
                          Text(
                            "PDF",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: AppColors.primary,
                            ),
                          ),
                          Icon(
                            Icons.download_outlined,
                            color: AppColors.primary,
                          )
                        ],
                      ),
                    ),
                    SpaceHeight(16),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: HorizontalDataTable(
                          leftHandSideColumnWidth: 50,
                          rightHandSideColumnWidth: 730,
                          isFixedHeader: true,
                          headerWidgets: _getTitleReportPageWidget(),
                          // isFixedFooter: true,
                          // footerWidgets: _getTitleWidget(),
                          leftSideItemBuilder: (context, index) {
                            return Container(
                              width: 40,
                              height: 52,
                              alignment: Alignment.centerLeft,
                              child: Center(
                                  child: Text(
                                      transactionReport![index].id.toString())),
                            );
                          },
                          rightSideItemBuilder: (context, index) {
                            return Row(
                              children: <Widget>[
                                Container(
                                  width: 120,
                                  height: 52,
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                  alignment: Alignment.centerLeft,
                                  child: Center(
                                      child: Text(
                                    transactionReport![index]
                                        .totalPrice!
                                        .currencyFormatRp,
                                  )),
                                ),
                                Container(
                                  width: 120,
                                  height: 52,
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                  alignment: Alignment.centerLeft,
                                  child: Center(
                                      child: Text(
                                    transactionReport[index]
                                        .totalItem!
                                        .toString(),
                                  )),
                                ),
                                Container(
                                  width: 120,
                                  height: 52,
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                  alignment: Alignment.centerLeft,
                                  child: Center(
                                    child: Text(transactionReport[index]
                                        .kasirId!
                                        .toString()),
                                  ),
                                ),
                                Container(
                                  width: 120,
                                  height: 52,
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                  alignment: Alignment.centerLeft,
                                  child: Center(
                                    child: Text(transactionReport[index]
                                        .paymentMethod!),
                                  ),
                                ),
                                Container(
                                  width: 230,
                                  height: 52,
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                  alignment: Alignment.centerLeft,
                                  child: Center(
                                    child: Text(transactionReport[index]
                                        .transactionTime!
                                        .toFormattedDate()),
                                  ),
                                ),
                              ],
                            );
                          },
                          itemCount: transactionReport!.length,
                          rowSeparatorWidget: const Divider(
                            color: Colors.black38,
                            height: 1.0,
                            thickness: 0.0,
                          ),
                          leftHandSideColBackgroundColor: AppColors.white,
                          rightHandSideColBackgroundColor: AppColors.white,

                          itemExtent: 55,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget _getTitleItemWidget(String label, double width) {
    return Container(
      width: width,
      height: 56,
      color: AppColors.primary,
      alignment: Alignment.centerLeft,
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  List<Widget> _getTitleReportPageWidget() {
    return [
      _getTitleItemWidget('ID', 120),
      _getTitleItemWidget('Total', 120),
      _getTitleItemWidget('Total Item', 120),
      _getTitleItemWidget('Cashier', 120),
      _getTitleItemWidget('Payment', 120),
      _getTitleItemWidget('Time', 230),
    ];
  }
}
