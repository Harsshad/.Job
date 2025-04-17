import 'package:dot_job/resources/components/my_button.dart';
import 'package:dot_job/resources/components/my_textfield.dart';
import 'package:flutter/material.dart';

class JobPosterRegisterScreen extends StatelessWidget {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _companyNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPwController = TextEditingController();

  final void Function()? onTap;

  JobPosterRegisterScreen({super.key, required this.onTap});

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
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Job Poster Registration successful!')),
      );
      Navigator.pushReplacementNamed(context, '/job-poster-login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
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
                  const Icon(Icons.business, size: 100, color: Colors.cyanAccent),
                  const SizedBox(height: 20),
                  const Text(
                    "Create your Job Poster account!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 30),

                  MyTextfield(
                    hintText: 'Full Name',
                    obscureText: false,
                    controller: _fullNameController,
                    focusNode: FocusNode(),
                  ),
                  const SizedBox(height: 12),

                  MyTextfield(
                    hintText: 'Company Name',
                    obscureText: false,
                    controller: _companyNameController,
                    focusNode: FocusNode(),
                  ),
                  const SizedBox(height: 12),

                  MyTextfield(
                    hintText: 'Email',
                    obscureText: false,
                    controller: _emailController,
                    focusNode: FocusNode(),
                  ),
                  const SizedBox(height: 12),

                  MyTextfield(
                    hintText: 'Phone Number',
                    obscureText: false,
                    controller: _phoneController,
                    focusNode: FocusNode(),
                  ),
                  const SizedBox(height: 12),

                  MyTextfield(
                    hintText: 'Password',
                    obscureText: true,
                    controller: _passwordController,
                    focusNode: FocusNode(),
                  ),
                  const SizedBox(height: 12),

                  MyTextfield(
                    hintText: 'Confirm Password',
                    obscureText: true,
                    controller: _confirmPwController,
                    focusNode: FocusNode(),
                  ),
                  const SizedBox(height: 25),

                  MyButton(
                    text: "Register",
                    onTap: () => register(context),
                  ),
                  const SizedBox(height: 25),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already a Job Poster? ", style: TextStyle(color: Colors.grey)),
                      GestureDetector(
                        onTap: ()=> Navigator.pushNamed(context,'/job-poster-login'),
                        child: const Text(
                          "Login here",
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
