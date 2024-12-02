// ignore_for_file: use_is_even_rather_than_modulo

import 'package:admin/shared/theme/colors.dart';
import 'package:flutter/material.dart';

class OrderTable extends StatelessWidget {
  OrderTable({super.key});

  final List<Map<String, dynamic>> orders = List.generate(
    100,
    (index) => {
      'orderId': 'REF: 0098$index',
      'customerName': '0700 123 456',
      'amount': 'Ksh. 29,500',
      'items': 106,
      'status': index % 2 == 0 ? 'Active' : 'Closed',
      'payment': index % 2 == 0 ? 'M-Pesa' : 'Voucher',
      'delivery': 'In progress',
      'feedback': '-',
    },
  );

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        cardTheme: const CardTheme(elevation: 0),
        scaffoldBackgroundColor: Colors.white,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                ActionChip(
                  side: BorderSide.none,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 8),
                  padding: const EdgeInsets.only(
                    left: 5,
                    right: 5,
                  ),
                  visualDensity: VisualDensity.compact,
                  label: const Text('All Orders'),
                  labelStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                  backgroundColor: kSecondaryColor,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 8,
                ),
                ActionChip(
                  side: BorderSide.none,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 8),
                  padding: const EdgeInsets.only(
                    left: 5,
                    right: 5,
                  ),
                  visualDensity: VisualDensity.compact,
                  label: const Text('New Orders'),
                  labelStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                  backgroundColor: kDefaultGrey,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 8,
                ),
                ActionChip(
                  side: BorderSide.none,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 8),
                  padding: const EdgeInsets.only(
                    left: 5,
                    right: 5,
                  ),
                  visualDensity: VisualDensity.compact,
                  label: const Text('In Delivery'),
                  labelStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                  backgroundColor: kDefaultGrey,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 8,
                ),
                ActionChip(
                  side: BorderSide.none,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 8),
                  padding: const EdgeInsets.only(
                    left: 5,
                    right: 5,
                  ),
                  visualDensity: VisualDensity.compact,
                  label: const Text('Order History'),
                  labelStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                  backgroundColor: kDefaultGrey,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: PaginatedDataTable(
                showEmptyRows: false,
                columns: [
                  DataColumn(label: Text('Order ID'.toUpperCase())),
                  DataColumn(label: Text('Customer Phone'.toUpperCase())),
                  DataColumn(label: Text('Amount'.toUpperCase())),
                  DataColumn(label: Text('Order Items'.toUpperCase())),
                  DataColumn(label: Text('Order Status'.toUpperCase())),
                  DataColumn(label: Text('Payment Method'.toUpperCase())),
                  DataColumn(label: Text('Delivery Status'.toUpperCase())),
                  DataColumn(label: Text('Customer Feedback'.toUpperCase())),
                ],
                source: OrderDataSource(orders),
                // rowsPerPage: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OrderDataSource extends DataTableSource {
  OrderDataSource(this.orders);
  final List<Map<String, dynamic>> orders;

  @override
  DataRow? getRow(int index) {
    if (index >= orders.length) return null;

    final order = orders[index];
    final statusColor = order['status'] == 'Active' ? Colors.green : Colors.red;

    return DataRow(
      color: WidgetStatePropertyAll<Color>(
        (index % 2).isEven ? Colors.blueGrey.shade50 : Colors.white,
      ),
      cells: [
        DataCell(Text(order['orderId'] as String)),
        DataCell(Text(order['customerName'] as String)),
        DataCell(Text(order['amount'] as String)),
        DataCell(Text(order['items'].toString())),
        DataCell(
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: statusColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              order['status'] as String,
              style: TextStyle(color: statusColor),
            ),
          ),
        ),
        DataCell(Text(order['payment'] as String)),
        DataCell(Text(order['delivery'] as String)),
        DataCell(Text(order['feedback'] as String)),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => orders.length;

  @override
  int get selectedRowCount => 0;
}
