import 'package:flutter/material.dart';
import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  bool obscurePassword = true;
  bool obscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),

      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 430,
              ),

              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 35,
                  vertical: 20,
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                    const SizedBox(height: 40),

                    const Center(
                      child: Text(
                        "Edu-link",
                        style: TextStyle(
                          fontSize: 48,
                          color: Color(0xFF5B8DEF),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    const Center(
                      child: Text(
                        "Learn on the Go!",
                        style: TextStyle(
                          fontSize: 22,
                          color: Color(0xFF5B8DEF),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),

                    const SizedBox(height: 50),

                    const Text(
                      "Name",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    const SizedBox(height: 10),

                    buildTextField(
                      hint: "Amina",
                      icon: Icons.person_outline,
                    ),

                    const SizedBox(height: 30),

                    const Text(
                      "Email Address",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    const SizedBox(height: 10),

                    buildTextField(
                      hint: "Amina@gmail.com",
                      icon: Icons.email_outlined,
                    ),

                    const SizedBox(height: 30),

                    const Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    const SizedBox(height: 10),

                    buildPasswordField(),

                    const SizedBox(height: 30),

                    const Text(
                      "Confirm Password",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    const SizedBox(height: 10),

                    buildConfirmPasswordField(),

                    const SizedBox(height: 40),

                    SizedBox(
                      width: double.infinity,
                      height: 60,

                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF5B8DEF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),

                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        },

                        child: const Text(
                          "SIGN UP",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 40),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [

                        const Text(
                          "Have an account already?",
                          style: TextStyle(fontSize: 15),
                        ),

                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ),
                            );
                          },

                          child: const Text(
                            "Log in",
                            style: TextStyle(
                              color: Color(0xFF5B8DEF),
                            ),
                          ),
                        ),
                      ],
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

  Widget buildTextField({
    required String hint,
    required IconData icon,
  }) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,

        prefixIcon: Icon(
          icon,
          color: const Color(0xFF6F35A5),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),

          borderSide: const BorderSide(
            color: Color(0xFF6F35A5),
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),

          borderSide: const BorderSide(
            color: Color(0xFF6F35A5),
            width: 2,
          ),
        ),
      ),
    );
  }

  Widget buildPasswordField() {
    return TextField(
      obscureText: obscurePassword,

      decoration: InputDecoration(
        hintText: "Amina123",

        prefixIcon: const Icon(
          Icons.lock_outline,
          color: Color(0xFF6F35A5),
        ),

        suffixIcon: IconButton(
          icon: Icon(
            obscurePassword
                ? Icons.visibility_off_outlined
                : Icons.visibility_outlined,
            color: Colors.grey,
          ),

          onPressed: () {
            setState(() {
              obscurePassword = !obscurePassword;
            });
          },
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),

          borderSide: const BorderSide(
            color: Color(0xFF6F35A5),
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),

          borderSide: const BorderSide(
            color: Color(0xFF6F35A5),
            width: 2,
          ),
        ),
      ),
    );
  }

  Widget buildConfirmPasswordField() {
    return TextField(
      obscureText: obscureConfirmPassword,

      decoration: InputDecoration(
        hintText: "Amina123",

        prefixIcon: const Icon(
          Icons.lock_outline,
          color: Color(0xFF6F35A5),
        ),

        suffixIcon: IconButton(
          icon: Icon(
            obscureConfirmPassword
                ? Icons.visibility_off_outlined
                : Icons.visibility_outlined,
            color: Colors.grey,
          ),

          onPressed: () {
            setState(() {
              obscureConfirmPassword = !obscureConfirmPassword;
            });
          },
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),

          borderSide: const BorderSide(
            color: Color(0xFF6F35A5),
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),

          borderSide: const BorderSide(
            color: Color(0xFF6F35A5),
            width: 2,
          ),
        ),
      ),
    );
  }
}