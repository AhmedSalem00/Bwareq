import 'package:flutter/material.dart';

class CustomButtonKey extends StatelessWidget {
  final String? text;
  final void Function()? onPressed;
  const CustomButtonKey({Key? key, this.text, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return SizedBox(
      width: deviceSize.width * 0.5,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          minimumSize: const Size.fromHeight(40),
        ),
        onPressed: onPressed,
        child:  Text(text!, style: const TextStyle(color: Colors.black,)),
      ),
    );
  }
}
