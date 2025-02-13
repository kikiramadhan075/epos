// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:epos/core/components/dashed_line.dart';
import 'package:epos/core/extensions/int_ext.dart';
import 'package:epos/presentation/history/models/history_model.dart';
import 'package:epos/presentation/report/blocs/summary/summary_bloc.dart';

class SummaryReport extends StatefulWidget {
  final String startDate;
  final String endDate;
  const SummaryReport({
    Key? key,
    required this.startDate,
    required this.endDate,
  }) : super(key: key);

  @override
  State<SummaryReport> createState() => _SummaryReportState();
}

class _SummaryReportState extends State<SummaryReport> {
  @override
  void initState() {
    super.initState();
    context.read<SummaryBloc>().add(
          SummaryEvent.getSummary(
            widget.startDate,
            widget.endDate,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Summary Report"),
        actions: const [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: // // Revenue Section
            BlocBuilder<SummaryBloc, SummaryState>(
          builder: (context, state) {
            log("State: $state");
            return state.maybeWhen(orElse: () {
              return state.maybeWhen(
                orElse: () {
                  return SizedBox.shrink();
                },
                loading: () {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
                success: (total) {
                  return _buildReportSection('REVENUE', [
                    _buildRowItem('Subtotal', total.currencyFormatRp),
                    _buildRowItem('Discount', '0'),
                    _buildRowItem('Tax', '0'),
                    _buildRowItem('TOTAL', total.currencyFormatRp,
                        isBold: true),
                  ]);
                },
              );
            });
          },
        ),
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
            style: TextStyle(
                fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
          ),
          Text(
            value,
            style: TextStyle(
                fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
