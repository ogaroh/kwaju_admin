// ignore_for_file: inference_failure_on_instance_creation

import 'package:flutter/material.dart';

final analytics = [
  AnalyticsModel(title: 'Average Daily Orders (KSh)', value: '95,000'),
  AnalyticsModel(title: 'Total Order Value', value: '1,250,000'),
  AnalyticsModel(title: 'Order Count', value: '42,700'),
  AnalyticsModel(title: 'Total Customers', value: '4,700'),
];

class AnalyticsSection extends StatelessWidget {
  const AnalyticsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: analytics.map((model) => AnalyticsCard(model: model)).toList(),
    );
  }
}

class AnalyticsCard extends StatelessWidget {
  const AnalyticsCard({required this.model, super.key});

  final AnalyticsModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      width: 200,
      margin: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 16,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  model.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
              PopupMenuButton(
                icon: const Icon(Icons.more_vert),
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem(
                      child: Text('More'),
                    ),
                    //  PopupMenuItem(
                    //   child: Text('Refresh'),
                    // ),
                  ];
                },
              ),
            ],
          ),
          Row(
            children: [
              Text(
                model.value,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.grey.shade700,
                ),
              ),
              const Spacer(),
              const Text(
                'Items',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              'Last 30 Days',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 9,
                color: Colors.grey.shade700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AnalyticsModel {
  AnalyticsModel({required this.title, required this.value});

  final String title;
  final String value;
}
