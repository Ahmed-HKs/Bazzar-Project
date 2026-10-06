import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:  Icon(Icons.search, color: Colors.black,size:28),
          onPressed: () {
          },
        ),
        title: const Text(
          'Category',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true, 
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_none_rounded,
              color: Colors.black,
              size: 28,
            ),
            onPressed: () {
            },
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0, 
        ),
        body: Column(
        children: [
          //const SizedBox(height: 55),

          SizedBox(
            height: 25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                categoryText('All', ),
                categoryText('Novels'),
                categoryText('Self Love'),
                categoryText('Science'),
                categoryText('Romantic'),
              ],
            ),
          ),
           SizedBox(height: 10,),
          categoryItem(
            'assets/Image (10).png',
            'In in amet ultrices sit',
            '\$19.99',
          ),

         //  SizedBox(height: 10,),
          categoryItem(
            'assets/Frame (3).png',
            'Bibendum facilisis',
            '\$27.12',
          ),

          categoryItem(
            'assets/Frame (2).png',
            'Nulla et diam cras',
            '\$13.52',
          ),

          categoryItem(
            'assets/Image (5).png',
            'Risus malesuada in',
            '\$31.00',
          ),
        ],
      ),
    );
  }

  Widget categoryText(String text,) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            color: Colors.black ,
            fontSize: 14,
            fontWeight:  FontWeight.bold ,
          ),
        ),

        const SizedBox(height: 5),

        
      ],
    );
  }

  Widget categoryItem(
    String image,
    String title,
    String price,
  ) {
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.shade200,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(width: 10),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              Text(
                price,
                style: const TextStyle(
                  color: Color(0xFF5A4191),
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}