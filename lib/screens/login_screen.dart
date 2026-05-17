import 'package:flutter/material.dart';
import 'home_screen.dart';
import '../widgets/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),

      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(

            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 420,
              ),

              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 28,
                  vertical: 20,
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                    const SizedBox(height: 40),

                    Center(
                      child: Column(
                        children: [

                          const Text(
                            "Edu-link",
                            style: TextStyle(
                              fontSize: 52,
                              color: Color(0xFF5B8DEF),
                              fontWeight: FontWeight.w300,
                            ),
                          ),

                          const SizedBox(height: 10),

                          const Text(
                            "Learn Anywhere, Anytime",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF5B8DEF),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 90),

                    const Text(
                      "Email Address",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 12),

                    const CustomTextField(
                      hintText: "Amina@gmail.com",
                      prefixIcon: Icons.email_outlined,
                    ),

                    const SizedBox(height: 28),

                    const Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 12),

                    CustomTextField(
                      hintText: "Amina123",
                      prefixIcon: Icons.lock_outline,
                      obscureText: obscurePassword,

                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obscurePassword = !obscurePassword;
                          });
                        },

                        icon: Icon(
                          obscurePassword
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,

                          color: Colors.grey,
                        ),
                      ),
                    ),

                    const SizedBox(height: 12),

                    Align(
                      alignment: Alignment.centerRight,

                      child: TextButton(
                        onPressed: () {},

                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: Color(0xFF5B8DEF),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    SizedBox(
                      width: double.infinity,
                      height: 58,

                      child: ElevatedButton(
                        onPressed: () {

                          Navigator.push(
                            context,

                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        },

                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF5B8DEF),
                          elevation: 0,

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),

                        child: const Text(
                          "Log IN",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 55),

                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [

                          const Text(
                            "Don’t have an account?",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),

                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },

                            child: const Text(
                              "Signup Now",
                              style: TextStyle(
                                color: Color(0xFF5B8DEF),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}