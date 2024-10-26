import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/constants/colors.dart';
import 'package:project/pages/login_page.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({super.key});

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
              Color(0xFF9C6FE4),
              Color(0xFF6A3BC1),
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
                        'CREATE AN ACCOUNT',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w800,
                          color: AppColors.textColor,
                          height: 1.21,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Name Text field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: _buildTextFieldWithImage(
                      imagePath: 'assets/images/personal.png',
                      hintText: 'Name',
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Username Text field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: _buildTextFieldWithImage(
                      imagePath: 'assets/images/personal.png',
                      hintText: 'Username',
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Email Text field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: _buildTextFieldWithImage(
                      imagePath: 'assets/images/email.png',
                      hintText: 'Email',
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Country Dropdown field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: _buildTextFieldWithImage(
                      imagePath: 'assets/images/flag.png',
                      hintText: 'Country',
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Password Textfield
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: _buildTextFieldWithImage(
                      imagePath: 'assets/images/password.png',
                      hintText: 'Password',
                      isPassword: true,
                    ),
                  ),

                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 30,
                          height: 30,
                          child: Checkbox(
                            value: false,
                            onChanged: (value) {},
                            fillColor: WidgetStateProperty.all(Colors.white),
                            checkColor: Colors.deepPurple,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'Accept Terms and Condition',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),
                  SizedBox(
                    width: 400,
                    //height: 80,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.buttonColor,
                          //padding: const EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'CREATE AN ACCOUNT',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 30),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        const Text(
                          "Already have an account?",
                          style: TextStyle(
                            color: AppColors.textColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                               Get.to(() => const LoginPage());
                            },
                            child: const Text(
                              "Log In",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: AppColors.formColor,
                                  fontWeight: FontWeight.w600),
                            ))
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Textfield method
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
