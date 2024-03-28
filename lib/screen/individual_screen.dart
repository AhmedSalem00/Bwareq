import 'package:flutter/material.dart';
import 'package:login_register_screen/widget/custom_text_filed.dart';

import '../widget/custom_button_key.dart';
import 'account_type_screen.dart';

class IndividualScreeen extends StatelessWidget {
  const IndividualScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
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
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Individual',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 7),
                  const Text(
                    'Individual account  is  Owned  Managed by  a only one user',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'job title',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                   SizedBox(
                    width: deviceSize.width * 0.5,
                    child: const CustomTextFormFiled(
                      hintText: 'Engineer',
                    ),
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    'Phone number',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                   SizedBox(
                    width: deviceSize.width * 0.5,
                    child: const CustomTextFormFiled(
                      hintText: '+91151235678',
                    ),
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    'Bank account',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                   SizedBox(
                     width: deviceSize.width * 0.5,
                    child: const CustomTextFormFiled(
                      hintText: '+91151235678',
                    ),
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    'IBAN',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                   SizedBox(
                    width: deviceSize.width * 0.5,
                    child: const CustomTextFormFiled(
                      hintText: '+91151235678',
                    ),
                  ),
                  const SizedBox(height: 25),
                   CustomButtonKey(text: 'Next',onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AccountTypeScreen()),
                    );
                  }),
                ],
              ),
            ),
            const SizedBox(width: 30),
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
