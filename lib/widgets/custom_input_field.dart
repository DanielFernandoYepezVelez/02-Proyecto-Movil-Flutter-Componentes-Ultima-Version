import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyBoardType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyBoardType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: '',
      autofocus: false,
      obscureText: obscureText,
      keyboardType: keyBoardType,
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        // print(value);
        formValues[formProperty] = value;
      },
      validator: (value) {
        if (value == null) return 'Este Campo Es Requerido';
        return value.length < 3 ? 'Minimo De 3 Letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        // prefixIcon: Icon(Icons.verified_user_outlined),
        icon: icon == null ? null : Icon(icon),
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        // focusedBorder: OutlineInputBorder(
        //   borderSide: BorderSide(
        //     color: Colors.green,
        //   ),
        // ),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.only(
        //     topRight: Radius.circular(10),
        //     bottomLeft: Radius.circular(10),
        //   ),
        // ),
      ),
    );
  }
}
