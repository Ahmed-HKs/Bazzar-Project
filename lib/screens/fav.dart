import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
   FavoritesScreen({super.key});

  final List<Map<String, String>> books =  [
    {
      'title': 'In in amet ultrices sit.',
      'price': '\$19.99',
      'image': 'assets/Image (10).png',
    },
    {
      'title': 'Bibendum facilisis.',
      'price': '\$27.12',
      'image': 'assets/Frame (3).png',
    },
    {
      'title': 'Nulla et diam cras.',
      'price': '\$13.52',
      'image': 'assets/Frame (2).png',
    },
    {
      'title': 'Risus malesuada in.',
      'price': '\$31.00',
      'image': 'assets/image (5).png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    const purple = Color(0xFF5B3F94);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: const BackButton(color: Colors.black),
        title: const Text(
          'Your Favorites',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: ListView.separated(
        itemCount: books.length,
        separatorBuilder: (_, __) => Divider(height: 1),
        itemBuilder: (context, index) {
          final book = books[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    book['image']!,
                    width: 54,
                    height: 54,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        book['title']!,
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        book['price']!,
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: purple,
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.favorite, color: purple, size: 30),
              ],
            ),
          );
        },
      ),
    );
  }
}
