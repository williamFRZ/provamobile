import 'package:flutter/material.dart';

class Widgetdados extends StatelessWidget {

  final TextEditingController controller;
  final String label;
  final IconData icon;
  final String hint;
  final bool obscureText;
  final VoidCallback? toggleObscure;

  const Widgetdados({
    super.key,
    required this.controller,
    required this.label,
    required this.icon,
    required this.hint,
    this.obscureText = false,
    this.toggleObscure,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.blueGrey)
        ),
        labelText: label,
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.grey),
        prefixIcon: Icon(icon, color: Colors.blueGrey),
        suffixIcon: toggleObscure != null
            ? IconButton(
                 onPressed: toggleObscure,
                icon: Icon(
                  obscureText ? Icons.visibility_off : Icons.visibility,
                  color: Colors.blueGrey,
                ),
              )
            : null,

      ),
    ),
    const SizedBox(height: 20),
    ],
  };