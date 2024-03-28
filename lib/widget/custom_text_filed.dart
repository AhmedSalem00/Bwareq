import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  final String? hintText;
  final TextEditingController? textEditingController;
  const CustomTextFormFiled({
    Key? key,
    required this.hintText, this.textEditingController
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      obscureText: true,
      decoration:  InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1,color: Colors.black),
        ),
        hintText: hintText,
        // contentPadding: const EdgeInsets.all(10.0),
        border: const OutlineInputBorder(

          borderRadius: BorderRadius.all(Radius.zero),

        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),

        ),
      ),
    );
  }
}
