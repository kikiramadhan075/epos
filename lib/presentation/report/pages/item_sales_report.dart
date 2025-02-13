// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:epos/core/components/spaces.dart';
import 'package:epos/core/constants/colors.dart';
import 'package:epos/core/extensions/int_ext.dart';
import 'package:epos/core/utils/helper_pdf_service.dart';
import 'package:epos/core/utils/permession_helper.dart';
import 'package:epos/presentation/report/blocs/get_order_item/get_order_item_bloc.dart';
import 'package:epos/presentation/report/utils/item_sales_invoice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';
import 'package:permission_handler/permission_handler.dart';

class ItemSalesReport extends StatefulWidget {
  final String startDate;
  final String endDate;
  const ItemSalesReport({
    Key? key,
    required this.startDate,
    required this.endDate,
  }) : super(key: key);

  @override
  State<ItemSalesReport> createState() => _ItemSalesReportState();
}

class _ItemSalesReportState extends State<ItemSalesReport> {
  @override
  void initState() {
    super.initState();
    context.read<GetOrderItemBloc>().add(
          GetOrderItemEvent.getOrderItem(
            widget.startDate,
            widget.endDate,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Item Sales Report"),
        actions: const [],
      ),
      body: BlocBuilder<GetOrderItemBloc, GetOrderItemState>(
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
              final itemSales = data!.data!;
              if (itemSales.isEmpty) {
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
                          final pdfFile = await ItemSalesInvoice.generate(
                              itemSales, searchDateFormatted);
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
                          rightHandSideColumnWidth: 600,
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
                                  child: Text(itemSales![index].id.toString())),
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
                                    itemSales![index].productName!,
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
                                    itemSales[index].orderId!.toString(),
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
                                        itemSales[index].quantity!.toString()),
                                  ),
                                ),
                                Container(
                                  width: 120,
                                  height: 52,
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                  alignment: Alignment.centerLeft,
                                  child: Center(
                                    child: Text(itemSales[index]
                                        .totalPrice!
                                        .currencyFormatRp),
                                  ),
                                ),
                              ],
                            );
                          },
                          itemCount: itemSales!.length,
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
      _getTitleItemWidget('Product', 120),
      _getTitleItemWidget('Order ID', 120),
      _getTitleItemWidget('Qty', 120),
      _getTitleItemWidget('Total', 120),
    ];
  }
}
