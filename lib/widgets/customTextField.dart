// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Customtextfield extends StatelessWidget {
  final TextEditingController controlador;
  final String? hintText;
  final bool obscuro;
  final TextInputType tipoTexto;

  const Customtextfield({
    required this.controlador,
    required this.hintText,
    required this.obscuro,
    required this.tipoTexto,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controlador,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color.fromARGB(255, 247, 208, 174),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: Colors.red, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: Color(0xFFA8E6CF), width: 5),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color.fromARGB(104, 0, 0, 0),
        ),
      ),
      keyboardType: tipoTexto,
      obscureText: obscuro,
    );
  }
}
