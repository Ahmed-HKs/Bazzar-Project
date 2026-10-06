//import 'package:depi_flutter/screens/ProfileScreen.dart';
//import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  static  List<Map<String, String>> books = [
    {
      'image': 'assets/image 2.png',
      'title': 'The Kite Runner',
      'price': '\$14.99',
    },
    {
      'image': 'assets/Mask Group.png',
      'title': 'The Kite Runner',
      'price': '\$20.99',
    },
    {
      'image': 'assets/Mask Group (1).png',
      'title': 'The Kite Runner',
      'price': '\$14.99',
    },
  ];

  static List<String> vendors = [
    'assets/Group (1).png',
    'assets/Frame.png',
    'assets/Group (2).png',
    'assets/Frame (1).png',
  ];

  static List<Map<String, String>> authors = [
    {'image': 'assets/Image (1).png', 'name': 'John Freeman', 'job': 'Writer'},
    {'image': 'assets/Image (2).png', 'name': 'Tess Gunty', 'job': 'Novelist'},
    {'image': 'assets/Image (3).png', 'name': 'Richard Per', 'job': 'Writer'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.search, color: Colors.black, size: 28),
          onPressed: () {},
        ),
        title: const Text(
          'Home',
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
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),

            Container(
              height: 200,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: const Color(0xFFF3F1F9),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 20,
                    top: 0,
                    bottom: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Special Offer',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 6),

                        const Text(
                          'Discount 25%',
                          style: TextStyle(fontSize: 15),
                        ),

                        const SizedBox(height: 16),

                        Container(
                          width: 130,
                          height: 44,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xFF5A4191),
                            borderRadius: BorderRadius.circular(22),
                          ),
                          child: const Text(
                            'Order Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Positioned(
                    right: 20,
                    top: 10,
                    child: Container(
                      width: 130,
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        image: const DecorationImage(
                          image: AssetImage('assets/Image.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [dot(true), const SizedBox(width: 6), dot(false)],
            ),

            const SizedBox(height: 25),

            sectionTitle('Top of Week'),

            const SizedBox(height: 15),

            SizedBox(
              height: 310,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 20),
                itemCount: books.length,
                itemBuilder: (context, index) {
                  return bookItem(
                    books[index]['image']!,
                    books[index]['title']!,
                    books[index]['price']!,
                  );
                },
              ),
            ),

            const SizedBox(height: 25),

            sectionTitle('Best Vendors'),

            const SizedBox(height: 15),

            SizedBox(
              height: 85,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 20),
                itemCount: vendors.length,
                itemBuilder: (context, index) {
                  return vendorItem(vendors[index]);
                },
              ),
            ),

            const SizedBox(height: 25),

            sectionTitle('Authors'),

            const SizedBox(height: 15),

            SizedBox(
              height: 190,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 20),
                itemCount: authors.length,
                itemBuilder: (context, index) {
                  return authorItem(
                    authors[index]['image']!,
                    authors[index]['name']!,
                    authors[index]['job']!,
                  );
                },
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget dot(bool selected) {
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: selected ? const Color(0xFF5A4191) : Colors.grey.shade300,
        shape: BoxShape.circle,
      ),
    );
  }

  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          const Text(
            'See all',
            style: TextStyle(
              color: Color(0xFF5A4191),
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget bookItem(String image, String title, String price) {
    return Container(
      width: 170,
      margin: const EdgeInsets.only(right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 235,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 10),

          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 4),

          Text(
            price,
            style: const TextStyle(
              color: Color(0xFF5A4191),
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget vendorItem(String image) {
    return Container(
      width: 115,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.contain),
      ),
    );
  }

  Widget authorItem(String image, String name, String job) {
    return Container(
      width: 130,
      margin: const EdgeInsets.only(right: 15),
      child: Column(
        children: [
          Container(
            width: 115,
            height: 115,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 10),

          Text(
            name,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 3),

          Text(job, style: const TextStyle(color: Colors.grey, fontSize: 13)),
        ],
      ),
    );
  }
}
////////////////////////////////////////////////
//child: ElevatedButton(
        //   onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (_) => ProfileScreen()
            //   ),
            // );
        //     //!
        //     Navigator.pushNamed(context, "profile");
        //     //?
        //   },
        //   child: Text("open profile"),
        // ),

////////////////////////////////////////
// List<String> names = [
//   "",
//   "",
//   "",
//   "",
//   "",
//   "",
//   "",
//   "",
//   "",
// ];

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3,
//           childAspectRatio: 1 ,
//         ),
//         itemCount: names.length,
//         itemBuilder: (context, index) {
//           return Card(
//             color:Colors.grey,
//             child: Text(names[index]));
//         },
//       ),
//     );
//   }
// }

///////////////////////////////
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   bool checked = false;
//   int count = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               IconButton(
//                 onPressed: () {
//                   count = count + 1;
//                   setState(() {});
//                   print(count);
//                 },
//                 icon: Icon(Icons.add),
//               ),
//               Text(count.toString(), style: TextStyle(fontSize: 18)),
//               IconButton(onPressed: () {
//                   count = count - 1;
//                   setState(() {});
//                   print(count);

//                 }, icon: Icon(Icons.remove)),
                
//             ],
//           ),

//           Checkbox(
//             value: checked,
//             onChanged: (newValue) {
//               checked = !checked;
//               setState(() {});
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }




// class HomeScreen extends StatelessWidget {
//   HomeScreen({super.key});
//   bool checked = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Checkbox(
//             value: checked,
//             onChanged: (newValue) {
//               checked = !checked;
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

////////////////////////////////////////////////////
//! CarouselSlider package
// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CarouselSlider.builder(
//         itemCount: 5,
//         itemBuilder: (context, index, realIndex) {
//           return Image.asset('assets/images/Frame1.png');
//         },
//         options:CarouselOptions(
//           height: 200,
//           autoPlay: true,
//           viewportFraction: 1,
//           enlargeCenterPage: true
//         )
//       ),
//     );
//   }
// }



// class HomeScreen extends StatelessWidget {
//   List<String> names = [
//     "Ahmed",
//     "Ahmed",
//     "Ahmed",
//     "Ahmed",
//     "Ahmed",
//     "Ahmed",
//     "Ahmed",
//     "Ahmed",
//     "Ahmed",
//     "Ahmed",
//     "Ahmed",
//     "Ahmed",
//     "Ahmed",
//     "Ahmed",
//     "Ahmed",
//     "Ahmed",
//     "Ahmed",
//     "Ahmed",
//     "Ahmed",
//     "Ahmed",
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: [
//           Image.asset('assets/images/Frame1.png'),
//           for (var item in names)
//             Container(
//               margin: EdgeInsets.all(8),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(6),
//                 color: Colors.grey,
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     item,
//                     style: TextStyle(fontSize: 20, color: Colors.black),
//                   ),
//                 ],
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }
//? text field
// class HomeScreen extends StatelessWidget {
//   var emailController = TextEditingController();
//   var passwordController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16),
//             child: TextField(
//               controller: emailController,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 prefixIcon: Icon(Icons.email),
//                 labelText: "Email",
//               ),
//             ),
//           ), 
//           Padding(
//             padding: const EdgeInsets.all(16),
//             child: TextField(
//               controller: passwordController,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 prefixIcon: Icon(Icons.security),
//                 labelText: "Password",
//               ),
//             ),
//           ),
//             //if(passwordController.text.isNotEmpty)
//              ElevatedButton(
//               onPressed: () {
//                 final email = emailController.text;
//                 final pass = passwordController.text;
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(content: Text("Email is : $email, password : $pass")),
//                 );
//                 emailController.clear();
//                 passwordController.clear();
//               },
//               child: Text("Login"),
//             ),
//           //TextFormField(),
//         ],
//       ),
//     );
//   }
// }

////////////////////////////
//! calculator ui

// class HomeScreen extends StatelessWidget {
//   var number1 = TextEditingController();
//   var number2 = TextEditingController();
//   var resultController = TextEditingController();
//   double result = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16),
//             child: TextField(
//               controller: number1,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 labelText: "num 1",
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16),
//             child: TextField(
//               controller: number2,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 labelText: "num 2",
//               ),
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               ElevatedButton(
//                 onPressed: () {
//                   double n1 = double.tryParse(number1.text)!;
//                   double n2 = double.tryParse(number2.text)!;
//                   resultController.text = (n1 + n2).toString();
//                 },
//                 child: const Text("+"),
//               ),

//               ElevatedButton(
//                 onPressed: () {
//                   double n1 = double.tryParse(number1.text)!;
//                   double n2 = double.tryParse(number2.text)!;
//                   resultController.text = (n1 - n2).toString();
//                 },
//                 child: const Text("-"),
//               ),

//               ElevatedButton(
//                 onPressed: () {
//                   double n1 = double.tryParse(number1.text)!;
//                   double n2 = double.tryParse(number2.text)!;
//                   resultController.text = (n1 * n2).toString();
//                 },
//                 child: const Text("*"),
//               ),

//               ElevatedButton(
//                 onPressed: () {
//                   double n1 = double.tryParse(number1.text)!;
//                   double n2 = double.tryParse(number2.text)!;
//                   if (n2 != 0) {
//                     resultController.text = (n1 / n2).toString();
//                   } else {
//                     resultController.text = "Cannot divide by 0";
//                   }
//                 },
//                 child: const Text("/"),
//               ),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16),
//             child: TextField(
//               controller: resultController,
//               readOnly: true, 
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
//                 labelText: "Result",
//               ),
//             )
//           ) 
//         ],
//       ),
//     );
//   }
// }
