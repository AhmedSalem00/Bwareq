import 'package:flutter/material.dart';

import '../widget/custom_button_key.dart';
import '../widget/custom_text_filed.dart';

class RecoverPasswordScreen extends StatelessWidget {
  const RecoverPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                // mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Ikramia',
                    style: TextStyle(color: Colors.black),
                  ),
                  const Text(
                    'Recover your Pssword',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 7),
                  const Text(
                    'we well send you a code to recover your account',
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
                  const CustomButtonKey(text: 'Send recovery code'),

                ],
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
                          'assets/images/Individual.png', fit: BoxFit.cover,
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
