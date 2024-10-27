import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/constants/colors.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cart", style: TextStyle(color: AppColors.formColor),),
        backgroundColor: Colors.blue[800],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.formColor,),
          onPressed: () => Get.back(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search bar and notifications
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search your cart",
                        prefixIcon: Icon(Icons.search, color: Colors.grey[600]),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: const Color(0xFFF2F2F2),
                        filled: true,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.notifications_outlined, color: Colors.grey[600]),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                "2 Items",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              // Cart items
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  _buildCartItem(
                    "assets/images/handbag.png",
                    "Chaca Ladies Handbag",
                    "12 Espees",
                  ),
                  _buildCartItem(
                    "assets/images/sneakers.png",
                    "Chaca Blue Sneakers",
                    "8 Espees",
                  ),
                ],
              ),
              // Coupon code and total section
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "coupon code",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(color: Colors.grey),
                              ),
                              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue[800],
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                          ),
                          onPressed: () {},
                          child: const Text("Apply", style: TextStyle(color: AppColors.formColor),),
                        ),
                      ],
                    ),
                    const Divider(height: 24, color: Colors.grey),
                    _buildPriceRow("Subtotal", "13 ESPEES"),
                    const SizedBox(height: 4),
                    _buildPriceRow("Delivery", "3 ESPEES"),
                    const Divider(height: 24, color: Colors.grey),
                    _buildPriceRow("Grand Total", "16 ESPEES", isBold: true),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              // Checkout button
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      "16 Espees\n2 Items",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[800],
                      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Checkout",
                      style: TextStyle(fontSize: 16,color: AppColors.formColor),
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

  Widget _buildCartItem(String imagePath, String title, String price) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imagePath,
          width: 80,
          height: 80,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis, // To handle long titles
              ),
              const SizedBox(height: 4),
              Text(
                price,
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.remove_circle, color: Colors.blue),
                    onPressed: () {},
                  ),
                  const Text("1", style: TextStyle(fontSize: 16)),
                  IconButton(
                    icon: const Icon(Icons.add_circle, color: Colors.blue),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
        // Wrapped Remove button in a Flexible widget to avoid overflow
        Flexible(
          child: TextButton(
            onPressed: () {},
            child: const Text(
              "Remove",
              style: TextStyle(color: Colors.red),
              overflow: TextOverflow.ellipsis, // To handle any text overflow
            ),
          ),
        ),
      ],
    ),
  );
}


  Widget _buildPriceRow(String label, String price, {bool isBold = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        Text(
          price,
          style: TextStyle(
            fontSize: 14,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ],
    );
  }
}

