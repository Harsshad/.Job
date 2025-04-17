import 'dart:io';
import 'package:dot_job/resources/components/my_button.dart';
import 'package:dot_job/resources/components/my_textfield.dart';
import 'package:dot_job/resources/components/sign_in_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class JobPosterLoginScreen extends StatefulWidget {
  const JobPosterLoginScreen({super.key, required this.onTap});

  final void Function()? onTap;

  @override
  State<JobPosterLoginScreen> createState() => _JobPosterLoginScreenState();
}

class _JobPosterLoginScreenState extends State<JobPosterLoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
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
                  const Icon(Icons.business_center, size: 100, color: Colors.cyanAccent),
                  const SizedBox(height: 20),
                  const Text(
                    'Login as a Job Poster',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 40),

                  MyTextfield(
                    hintText: 'Email',
                    obscureText: false,
                    controller: _emailController,
                    focusNode: FocusNode(),
                  ),
                  const SizedBox(height: 16),

                  MyTextfield(
                    hintText: 'Password',
                    obscureText: true,
                    controller: _passwordController,
                    focusNode: FocusNode(),
                  ),
                  const SizedBox(height: 24),

                  MyButton(
                    text: "Login",
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Poster Login tapped')),
                      );
                    },
                  ),
                  const SizedBox(height: 16),

                  if (!kIsWeb && (Platform.isAndroid || Platform.isIOS))
                    const SignInButton(),

                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("New Job Poster? ", style: TextStyle(color: Colors.grey)),
                      GestureDetector(
                        onTap: ()=> Navigator.pushNamed(context,'/job-poster-register'),
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
