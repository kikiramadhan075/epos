import 'package:epos/core/extensions/build_context_ext.dart';
import 'package:epos/core/extensions/date_time_ext.dart';
import 'package:epos/presentation/report/pages/item_sales_report.dart';
import 'package:epos/presentation/report/pages/product_sales_report.dart';
import 'package:epos/presentation/report/pages/summary_report.dart';
import 'package:epos/presentation/report/pages/transaction_report_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../core/components/custom_date_picker.dart';
import '../../../core/components/dashed_line.dart';
import '../../../core/components/spaces.dart';
import '../widgets/report_menu.dart';
import '../widgets/report_title.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({super.key});

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  int selectedMenu = 0;
  String title = 'Summary Sales Report';
  DateTime fromDate = DateTime.now().subtract(const Duration(days: 30));
  DateTime toDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    String searchDateFormatted =
        '${fromDate.toFormattedDate2()} to ${toDate.toFormattedDate2()}';

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ReportTitle(),
              const SizedBox(height: 10),

              // Date Picker
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  CustomDatePicker(
                    prefix: const Text('From: '),
                    initialDate: fromDate,
                    onDateSelected: (selectedDate) {
                      fromDate = selectedDate;
                      setState(() {});
                    },
                  ),
                  CustomDatePicker(
                    prefix: const Text('To: '),
                    initialDate: toDate,
                    onDateSelected: (selectedDate) {
                      toDate = selectedDate;
                      setState(() {});
                    },
                  ),
                ],
              ),
              const SizedBox(height: 15),

              // Report Menu
              Center(
                child: Wrap(
                  spacing: 10.0,
                  runSpacing: 10.0,
                  children: [
                    _buildReportMenu('Transaction Report', 1, () {
                      String formattedFromDate =
                          DateFormat('yyyy-MM-dd').format(fromDate);
                      String formattedToDate =
                          DateFormat('yyyy-MM-dd').format(toDate);
                      context.push(TransactionReportPage(
                        startDate: formattedFromDate,
                        endDate: formattedToDate,
                      ));
                    }),
                    _buildReportMenu('Item Sales Report', 4, () {
                      String formattedFromDate =
                          DateFormat('yyyy-MM-dd').format(fromDate);
                      String formattedToDate =
                          DateFormat('yyyy-MM-dd').format(toDate);
                      context.push(ItemSalesReport(
                        startDate: formattedFromDate,
                        endDate: formattedToDate,
                      ));
                    }),
                    _buildReportMenu('Product Sales Report', 5, () {
                      String formattedFromDate =
                          DateFormat('yyyy-MM-dd').format(fromDate);
                      String formattedToDate =
                          DateFormat('yyyy-MM-dd').format(toDate);
                      context.push(ProductSalesReport(
                        startDate: formattedFromDate,
                        endDate: formattedToDate,
                      ));
                    }),
                    _buildReportMenu('Summary Sales Report', 0, () {
                      String formattedFromDate =
                          DateFormat('yyyy-MM-dd').format(fromDate);
                      String formattedToDate =
                          DateFormat('yyyy-MM-dd').format(toDate);
                      context.push(SummaryReport(
                        startDate: formattedFromDate,
                        endDate: formattedToDate,
                      ));
                    }),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // // Report Content
              // Center(
              //   child: Column(
              //     children: [
              //       Text(
              //         title,
              //         style: const TextStyle(
              //             fontWeight: FontWeight.w600, fontSize: 16.0),
              //       ),
              //       Text(
              //         searchDateFormatted,
              //         style: const TextStyle(fontSize: 16.0),
              //       ),
              //     ],
              //   ),
              // ),
              // const SizedBox(height: 16),

              // const SizedBox(height: 20),

              // // Payment Section
              // _buildReportSection('PAYMENT', [
              //   _buildRowItem('Cash', '0'),
              //   _buildRowItem('TOTAL', '0', isBold: true),
              // ]),
            ],
          ),
        ),
      ),
    );
  }

  // Fungsi untuk membuat menu report dalam 2 kolom
  Widget _buildReportMenu(String label, int menuIndex, Function() onTap) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2 - 20,
      child: ReportMenu(
        label: label,
        // onPressed: () {
        //   setState(() {
        //     selectedMenu = menuIndex;
        //     title = label;
        //   });
        // },
        onPressed: onTap,
        // isActive: selectedMenu == menuIndex,
        isActive: false,
      ),
    );
  }
}
