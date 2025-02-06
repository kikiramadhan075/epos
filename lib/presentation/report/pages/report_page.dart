import 'package:epos/core/extensions/date_time_ext.dart';
import 'package:flutter/material.dart';
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
                    _buildReportMenu('Transaction Report', 1),
                    _buildReportMenu('Item Sales Report', 4),
                    _buildReportMenu('Daily Sales Report', 5),
                    _buildReportMenu('Summary Sales Report', 0),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Report Content
              Center(
                child: Column(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 16.0),
                    ),
                    Text(
                      searchDateFormatted,
                      style: const TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // Revenue Section
              _buildReportSection('REVENUE', [
                _buildRowItem('Subtotal', '0'),
                _buildRowItem('Discount', '0'),
                _buildRowItem('Tax', '0'),
                _buildRowItem('TOTAL', '0', isBold: true),
              ]),
              const SizedBox(height: 20),

              // Payment Section
              _buildReportSection('PAYMENT', [
                _buildRowItem('Cash', '0'),
                _buildRowItem('TOTAL', '0', isBold: true),
              ]),
            ],
          ),
        ),
      ),
    );
  }

  // Fungsi untuk membuat menu report dalam 2 kolom
  Widget _buildReportMenu(String label, int menuIndex) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2 - 20, 
      child: ReportMenu(
        label: label,
        onPressed: () {
          setState(() {
            selectedMenu = menuIndex;
            title = label;
          });
        },
        isActive: selectedMenu == menuIndex,
      ),
    );
  }

  Widget _buildReportSection(String title, List<Widget> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        const DashedLine(),
        ...items,
        const DashedLine(),
        const SizedBox(height: 8),
      ],
    );
  }

  Widget _buildRowItem(String label, String value, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
          ),
          Text(
            value,
            style: TextStyle(fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
