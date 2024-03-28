import 'package:flutter/material.dart';
import 'package:login_register_screen/widget/custom_button_key.dart';
import 'package:login_register_screen/widget/custom_text_filed.dart';

import 'login_screen.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({super.key});

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
                      'Create new password',
                      style:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 7),
                    const Text(
                      'Enter the 8 digits code to continue recover your email',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      'Password',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),

                    SizedBox(
                      width: deviceSize.width * 0.5,
                      child: const CustomTextFormFiled(
                        obscureText: true,
                        hintText: '***********',
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
                        obscureText: true,
                        hintText: '**********',
                      ),
                    ),
                    const SizedBox(height: 25),
                     CustomButtonKey(text: 'Submit',onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                        ),
                      );
                    }),

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
                          'assets/images/cash.png', fit: BoxFit.cover,
                          width: deviceSize.width *
                              0.5,
                          height: deviceSize.width *
                              0.7,
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
