import 'dart:io';

import 'package:epos/core/extensions/date_time_ext.dart';
import 'package:epos/core/extensions/int_ext.dart';
import 'package:epos/core/utils/helper_pdf_service.dart';
import 'package:epos/data/models/response/order_item_response_model.dart';
import 'package:flutter/services.dart';

import 'package:pdf/widgets.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class ItemSalesInvoice {
  static late Font ttf;
  static Future<File> generate(
      List<OrderItemModel> itemSales, String searchDateFormatted) async {
    final pdf = Document();
    var data = await rootBundle.load("assets/fonts/noto-sans.ttf");
    ttf = Font.ttf(data);
    final ByteData dataImage = await rootBundle.load('assets/images/logo.png');
    final Uint8List bytes = dataImage.buffer.asUint8List();

    // Membuat objek Image dari gambar
    final image = pw.MemoryImage(bytes);

    pdf.addPage(
      MultiPage(
        build: (context) => [
          buildHeader(image, searchDateFormatted),
          SizedBox(height: 1 * PdfPageFormat.cm),
          buildInvoice(itemSales),
          Divider(),
          SizedBox(height: 0.25 * PdfPageFormat.cm),
        ],
        footer: (context) => buildFooter(),
      ),
    );

    return HelperPdfService.saveDocument(
        name:
            'EPOS | Item Sales Report | ${DateTime.now().millisecondsSinceEpoch}.pdf',
        pdf: pdf);
  }

  static Widget buildHeader(MemoryImage image, String searchDateFormatted) =>
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 1 * PdfPageFormat.cm),
            Text('EPOS | Item Sales Report',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 0.2 * PdfPageFormat.cm),
            Text(
              "Data: $searchDateFormatted",
            ),
            Text(
              'Created At: ${DateTime.now().toFormattedDate()}',
            ),
          ],
        ),
        Image(
          image,
          width: 80.0,
          height: 80.0,
          fit: BoxFit.fill,
        ),
      ]);

  static Widget buildInvoice(List<OrderItemModel> itemSales) {
    final headers = ['Id', 'Order', 'Product', 'Qty', 'Total'];
    final data = itemSales.map((item) {
      return [
        item.id!,
        item.orderId,
        item.productName,
        item.quantity,
        item.totalPrice!.currencyFormatRp,
      ];
    }).toList();

    return Table.fromTextArray(
      headers: headers,
      data: data,
      border: null,
      headerStyle: TextStyle(
          fontWeight: FontWeight.bold, color: PdfColor.fromHex('FFFFFF')),
      headerDecoration: BoxDecoration(color: PdfColors.blue),
      cellHeight: 30,
      cellAlignments: {
        0: Alignment.centerLeft,
        1: Alignment.center,
        2: Alignment.center,
        3: Alignment.centerLeft,
        4: Alignment.centerLeft,
        5: Alignment.centerLeft,
      },
    );
  }

  static Widget buildFooter() => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Divider(),
          SizedBox(height: 2 * PdfPageFormat.mm),
          buildSimpleText(
              title: 'Address',
              value: 'Jl. Raya Maos - Sampang, Cilacap, Jawa Tengah 53272'),
          SizedBox(height: 1 * PdfPageFormat.mm),
        ],
      );

  static buildSimpleText({
    required String title,
    required String value,
  }) {
    final style = TextStyle(fontWeight: FontWeight.bold);

    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: pw.CrossAxisAlignment.end,
      children: [
        Text(title, style: style),
        SizedBox(width: 2 * PdfPageFormat.mm),
        Text(value),
      ],
    );
  }

  static buildText({
    required String title,
    required String value,
    double width = double.infinity,
    TextStyle? titleStyle,
    bool unite = false,
  }) {
    final style = titleStyle ?? TextStyle(fontWeight: FontWeight.bold);

    return Container(
      width: width,
      child: Row(
        children: [
          Expanded(child: Text(title, style: style)),
          Text(value, style: unite ? style : null),
        ],
      ),
    );
  }
}
