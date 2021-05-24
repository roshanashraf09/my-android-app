import 'package:flutter/material.dart';

class SDTextFormField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final TextInputType textInputType;
  final FormFieldValidator validator;

  const SDTextFormField(
      {Key? key,
        required this.hint,
        required this.controller,
        required this.textInputType,
        required this.validator})
      : super(key: key);

  InputDecoration _buildDateInputDecoration(BuildContext context) {
    return InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
            color: Colors.blueGrey, fontSize: 13, fontWeight: FontWeight.w400),
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.blueGrey)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.blueGrey)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.red)),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(color: Colors.white38)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.red)));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
      child: TextFormField(
        keyboardType: textInputType,
        controller: controller,
        decoration: _buildDateInputDecoration(context),
        validator: validator,
      ),
    );
  }
}
