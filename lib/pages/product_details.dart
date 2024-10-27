import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:project/constants/colors.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,color: AppColors.formColor,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.shopping_cart),
        //     onPressed: () {
        //       // Navigate to Cart
        //     },
        //   ),
        // ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product Image
              Container(
                height: 250,
                decoration: BoxDecoration(
                  //color: Colors.black,
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/sneakers.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(radius: 5, backgroundColor: Colors.blue),
                  SizedBox(width: 8),
                  CircleAvatar(radius: 5, backgroundColor: Colors.grey),
                  SizedBox(width: 8),
                  CircleAvatar(radius: 5, backgroundColor: Colors.grey),
                ],
              ),
              const SizedBox(height: 16),
              // Product Details
              const Text(
                "Chaca Blue Sneakers",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              const Text(
                "8 Espees",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  RatingBarIndicator(
                    rating: 5,
                    itemBuilder: (context, index) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    itemCount: 5,
                    itemSize: 20,
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    "5.0 (340 reviews)",
                    style: TextStyle(color: Colors.grey),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.favorite_border),
                    onPressed: () {
                      // Favorite action
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                "Color",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8),
              const Row(
                children: [
                  CircleAvatar(radius: 16, backgroundColor: Colors.black),
                  SizedBox(width: 8),
                  CircleAvatar(radius: 16, backgroundColor: Color(0xFF1C21A6)),
                  SizedBox(width: 8),
                  CircleAvatar(radius: 16, backgroundColor: Color(0xFF674ADB)),
                  SizedBox(width: 8),
                  CircleAvatar(radius: 16, backgroundColor: Color(0xFF054F94)),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Tab Buttons
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color:  Colors.lightBlue,
                        borderRadius: BorderRadius.circular(24),
                        border:Border.all(color: Colors.blue)
                        
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text("Details",
                        style: TextStyle(
                          color: Colors.black
                        ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text("Price in local currency",
                      style: TextStyle(
                        color: Colors.black
                      ),
                     ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text("Delivery & Returns",
                      style: TextStyle(
                        color: Colors.black
                      ),
                     ),
                    ),
                  ),
                ],
              ),
              const Divider(thickness: 1, height: 32),
              // Product Description
              const Text(
                "Chaca Blue Sneakers is a must-have for every woman that wants to elevate her look and confidence. Chaca Blue Sneakers is made of blue leather and different colors.",
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              const SizedBox(height: 8),
              const Text(
                "Color: Blue",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  // Quantity Selector
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("8 Espees"),
                          Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  // Add to Cart Button
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[800],
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        // Add to Cart action
                      },
                      child: const Text(
                        "Add to Cart",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue[800],
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: "Village Market"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "More"),
        ],
      ),
    );
  }
}
