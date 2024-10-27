import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/constants/colors.dart';
import 'package:project/pages/home_page.dart';
import 'package:project/pages/product_details.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF9C6FE4), // Lighter purple
              Color(0xFF6A3BC1), // Darker purple
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Container(
                    height: 55,
                    width: 391,
                    decoration: const BoxDecoration(
                      color: AppColors.formColor,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "IT'S TIME TO SHOP AGAIN!!!",
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w800,
                          color: AppColors.textColor,
                          height: 1.21,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),

                  // Email Text field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: _buildTextFieldWithImage(
                      imagePath: 'assets/images/email.png', 
                      hintText: 'Email',
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Password Text field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: _buildTextFieldWithImage(
                      imagePath: 'assets/images/password.png',
                      hintText: 'Password',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Forgot Password',
                        style: TextStyle(
                          color: AppColors.formColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Log In Button
                  SizedBox(
                    width: 400,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => const HomePage());
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.buttonColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'LOG IN',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Divider with "or" Text
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 2,
                            color: AppColors.formColor,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'OR',
                            style: TextStyle(
                              color: AppColors.formColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 2,
                            color: AppColors.formColor,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),
                  SizedBox(
                    width: 400,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.buttonColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'OR LOGIN WITH KINGSCHAT',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),
                   Center(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 48),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "New Here?",
                          style: TextStyle(
                            color: AppColors.textColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Create Account",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: AppColors.formColor,
                                  fontWeight: FontWeight.w600),
                                  textAlign: TextAlign.center,
                            )
                          )
                      ],
                    ),
                  )
                 ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // TextField with Image
  Widget _buildTextFieldWithImage({
    required String imagePath,
    required String hintText,
    bool isPassword = false,
  }) {
    return TextFormField(
      obscureText: isPassword,
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Image.asset(
            imagePath,
            width: 24,
            height: 24,
            fit: BoxFit.contain,
          ),
        ),
        hintText: hintText,
        fillColor: AppColors.formColor,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(2),
        ),
      ),
    );
  }
}



