import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  final String title;
  final String status;
  final int items;
  final String image;

  const OrderItem({
    super.key,
    required this.title,
    required this.status,
    required this.items,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    final isDelivered = status == 'Delivered';

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(image, width: 56, height: 56, fit: BoxFit.cover),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      status,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: isDelivered ? Colors.green : Colors.redAccent,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text('•', style: TextStyle(color: Colors.grey)),
                    const SizedBox(width: 8),
                    Text(
                      '$items items',
                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class HistoryScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: const BackButton(color: Colors.black),
        title: const Text(
          'Order History',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'October 2026',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Column(
                children: [
                  OrderItem(
                    title: 'The Da vinci Code',
                    status: 'Delivered',
                    items: 1,
                    image: 'assets/Image (10).png',
                  ),
                  Divider(height: 1),
                  OrderItem(
                    title: 'Carrie Fisher',
                    status: 'Delivered',
                    items: 5,
                    image: 'assets/Frame (3).png',
                  ),
                  Divider(height: 1),
                  OrderItem(
                    title: 'The Waiting',
                    status: 'Cancelled',
                    items: 2,
                    image: 'assets/Frame (2).png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
