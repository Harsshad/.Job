import 'dart:io';
import 'package:dot_job/resources/components/my_button.dart';
import 'package:dot_job/resources/components/my_textfield.dart';
import 'package:dot_job/resources/components/sign_in_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, required this.onTap});

  final void Function()? onTap;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212), // Dark background
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 900),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 40),
                  const Icon(Icons.code, size: 100, color: Colors.cyanAccent),
                  const SizedBox(height: 20),
                  const Text(
                    'Work When You Want. Post What You Need.',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 40),

                  // Email Textfield
                  MyTextfield(
                    hintText: 'Email',
                    obscureText: false,
                    controller: _emailController,
                    focusNode: FocusNode(),
                  ),
                  const SizedBox(height: 16),

                  // Password Textfield
                  MyTextfield(
                    hintText: 'Password',
                    obscureText: true,
                    controller: _passwordController,
                    focusNode: FocusNode(),
                  ),
                  const SizedBox(height: 24),

                  // Login Button
                  MyButton(
                    text: "Login",
                    onTap: () {
                      // Just a dummy action for now
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Login tapped')),
                      );
                    },
                  ),
                  const SizedBox(height: 16),

                  // Google Sign-In Button for mobile
                  if (!kIsWeb && (Platform.isAndroid || Platform.isIOS))
                    const SignInButton(),

                  const SizedBox(height: 20),

                  // Register Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Want to become a Job Seeker? ",
                        style: TextStyle(color: Colors.grey),
                      ),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: const Text(
                          "Register now",
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
                      const Text(
                        "Want to become a Job Poster? ",
                        style: TextStyle(color: Colors.grey),
                      ),
                      GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, '/register'),
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
