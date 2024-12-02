// ignore_for_file: use_is_even_rather_than_modulo

import 'package:admin/shared/theme/colors.dart';
import 'package:flutter/material.dart';

const headerTextStyle = TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.bold,
);
const contentTextStyle = TextStyle(
  fontSize: 11,
  fontWeight: FontWeight.normal,
);

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
                  labelPadding: const EdgeInsets.symmetric(horizontal: 3),
                  padding: const EdgeInsets.only(
                    left: 5,
                    right: 5,
                  ),
                  visualDensity: VisualDensity.compact,
                  label: const SizedBox(
                    width: 100,
                    child: Center(
                      child: Text('All Orders'),
                    ),
                  ),
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
                  labelPadding: const EdgeInsets.symmetric(horizontal: 3),
                  padding: const EdgeInsets.only(
                    left: 5,
                    right: 5,
                  ),
                  visualDensity: VisualDensity.compact,
                  label: const SizedBox(
                    width: 100,
                    child: Center(
                      child: Text('New Orders'),
                    ),
                  ),
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
                  labelPadding: const EdgeInsets.symmetric(horizontal: 3),
                  padding: const EdgeInsets.only(
                    left: 5,
                    right: 5,
                  ),
                  visualDensity: VisualDensity.compact,
                  label: const SizedBox(
                    width: 100,
                    child: Center(
                      child: Text('In Delivery'),
                    ),
                  ),
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
                  labelPadding: const EdgeInsets.symmetric(horizontal: 3),
                  padding: const EdgeInsets.only(
                    left: 5,
                    right: 5,
                  ),
                  visualDensity: VisualDensity.compact,
                  label: const SizedBox(
                    width: 100,
                    child: Center(
                      child: Text('Order History'),
                    ),
                  ),
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
                arrowHeadColor: kPrimaryColor,
                headingRowColor:
                    const WidgetStatePropertyAll<Color>(Colors.white),
                header: const Text(
                  'Orders',
                  style: TextStyle(
                    color: kSecondaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      label: Text(
                        'Filter',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      icon: Icon(
                        Icons.filter_alt_outlined,
                        size: 18,
                        color: Colors.grey.shade800,
                      ),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.grey.shade800,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      label: Text(
                        'Export CSV',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      icon: Icon(
                        Icons.upload_file,
                        size: 18,
                        color: Colors.grey.shade800,
                      ),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.grey.shade800,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      label: const Text(
                        'Create Order',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                      icon: const Icon(
                        Icons.add,
                        size: 18,
                        color: Colors.white,
                      ),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: kPrimaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ],
                columns: [
                  DataColumn(
                    label: Text(
                      'Order ID'.toUpperCase(),
                      style: headerTextStyle,
                    ),
                  ),
                  DataColumn(
                    label: SizedBox(
                      width: 100,
                      child: Text(
                        'Customer Phone'.toUpperCase(),
                        style: headerTextStyle,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Amount'.toUpperCase(),
                      style: headerTextStyle,
                    ),
                  ),
                  DataColumn(
                    label: SizedBox(
                      width: 100,
                      child: Text(
                        'Order Items'.toUpperCase(),
                        style: headerTextStyle,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: SizedBox(
                      width: 100,
                      child: Text(
                        'Order Status'.toUpperCase(),
                        style: headerTextStyle,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: SizedBox(
                      width: 100,
                      child: Text(
                        'Payment Method'.toUpperCase(),
                        style: headerTextStyle,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: SizedBox(
                      width: 100,
                      child: Text(
                        'Delivery Status'.toUpperCase(),
                        style: headerTextStyle,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: SizedBox(
                      width: 100,
                      child: Text(
                        'Customer Feedback'.toUpperCase(),
                        style: headerTextStyle,
                      ),
                    ),
                  ),
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
        DataCell(
          Text(
            order['orderId'] as String,
            style: contentTextStyle,
          ),
        ),
        DataCell(
          Text(
            order['customerName'] as String,
            style: contentTextStyle,
          ),
        ),
        DataCell(
          Text(
            order['amount'] as String,
            style: contentTextStyle.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        DataCell(
          Text(
            order['items'].toString(),
            style: contentTextStyle,
          ),
        ),
        DataCell(
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: statusColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              order['status'] as String,
              style: TextStyle(
                color: statusColor,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        DataCell(
          Text(
            order['payment'] as String,
            style: contentTextStyle,
          ),
        ),
        DataCell(
          Text(
            order['delivery'] as String,
            style: contentTextStyle,
          ),
        ),
        DataCell(
          Text(
            order['feedback'] as String,
            style: contentTextStyle,
          ),
        ),
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
