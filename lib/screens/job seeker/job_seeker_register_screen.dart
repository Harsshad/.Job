import 'package:dot_job/resources/components/my_button.dart';
import 'package:dot_job/resources/components/my_textfield.dart';
import 'package:flutter/material.dart';

class JobSeekerRegisterScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPwController = TextEditingController();
  final TextEditingController _fullNameController = TextEditingController();

  final void Function()? onTap;

  JobSeekerRegisterScreen({super.key, required this.onTap});

  void register(BuildContext context) {
    if (_passwordController.text != _confirmPwController.text) {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          backgroundColor: Color(0xFF1E1E1E),
          title: Text("Passwords don't match!", style: TextStyle(color: Colors.white)),
        ),
      );
    } else {
      // Simulate success
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Registration successful!')),
      );
      Navigator.pushReplacementNamed(context, '/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212), // Dark background
      body: Center(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 40),
                  const Icon(Icons.person_add, size: 100, color: Colors.cyanAccent),
                  const SizedBox(height: 20),
                  const Text(
                    "Let's create an account for you!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 30),

                  // Full Name
                  MyTextfield(
                    hintText: 'Full Name',
                    obscureText: false,
                    controller: _fullNameController,
                    focusNode: FocusNode(),
                  ),
                  const SizedBox(height: 12),

                  // Email
                  MyTextfield(
                    hintText: 'Email',
                    obscureText: false,
                    controller: _emailController,
                    focusNode: FocusNode(),
                    validator: (value) {
                      if (value == null || value.isEmpty) return 'Email is required';
                      if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
                          .hasMatch(value)) return 'Enter a valid email';
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),

                  // Password
                  MyTextfield(
                    hintText: 'Password',
                    obscureText: true,
                    controller: _passwordController,
                    focusNode: FocusNode(),
                  ),
                  const SizedBox(height: 12),

                  // Confirm Password
                  MyTextfield(
                    hintText: 'Confirm Password',
                    obscureText: true,
                    controller: _confirmPwController,
                    focusNode: FocusNode(),
                  ),
                  const SizedBox(height: 25),

                  // Register Button
                  MyButton(
                    text: "Register Here",
                    onTap: () => register(context),
                  ),
                  const SizedBox(height: 25),

                  // Already have account
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account? ",
                          style: TextStyle(color: Colors.grey)),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/job-seeker-login'),
                        child: const Text(
                          "Login now",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.cyanAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Become a Job Poster? ",
                          style: TextStyle(color: Colors.grey)),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/job-poster-register'),
                        child: const Text(
                          "Register here",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.cyanAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 60),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
