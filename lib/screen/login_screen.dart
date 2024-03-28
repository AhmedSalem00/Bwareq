import 'package:flutter/material.dart';
import 'package:login_register_screen/screen/create_new_password.dart';
import 'package:login_register_screen/screen/sign_up_screen.dart';
import 'package:login_register_screen/widget/custom_text_filed.dart';

import '../widget/custom_button_key.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isCheckedRemember = false;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Ikramia',
                      style: TextStyle(color: Colors.black),
                    ),
                    const Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 7),
                    const Text(
                      'Enter your info to get access to all features',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      'Email',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: deviceSize.width * 0.5,
                      child: const CustomTextFormFiled(
                        hintText: 'Example.eg@gmail.com',
                      ),
                    ),
                    const SizedBox(height: 25),
                    const Text(
                      'Password',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: deviceSize.width * 0.5,
                      child: const CustomTextFormFiled(
                        hintText: 'Password',
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CreateNewPassword()),
                            );
                          },
                          child: const Text(
                            'Forget password?',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Checkbox(
                          value: isCheckedRemember,
                          onChanged: (bool? value) {
                            setState(() {
                              isCheckedRemember = value ?? false;
                            });
                          },
                        ),
                        const Text("Remember me"),
                      ],
                    ),
                    const SizedBox(height: 25),
                    const CustomButtonKey(text: 'Login'),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignScreen()),
                        );
                      },
                      child: const Text('Don\'t have account? Signup'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            if (deviceSize.width > 600)
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Image.asset(
                          'assets/images/login.png',
                          fit: BoxFit.cover,
                          width: deviceSize.width * 0.5,
                          height: deviceSize.width * 0.7,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
