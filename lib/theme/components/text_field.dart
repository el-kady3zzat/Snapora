import 'package:flutter/material.dart';
import 'package:snapora/theme/colors/colors.dart';

class SnaporaTextField extends StatefulWidget {
  final TextEditingController controller;
  final double height;
  final String hint;
  final IconData icon;
  final bool hasSuffix;
  const SnaporaTextField(
      {super.key,
      required this.controller,
      required this.hint,
      required this.icon,
      required this.height,
      required this.hasSuffix});

  @override
  State<SnaporaTextField> createState() => _SnaporaTextFieldState();
}

class _SnaporaTextFieldState extends State<SnaporaTextField> {
  bool _isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      cursorColor: SnaporaColors.mainYellow,
      obscureText: !_isPasswordVisible,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: widget.height * 0.02),
        enabledBorder: _border(),
        focusedBorder: _border(),
        filled: true,
        fillColor: SnaporaColors.whiteWellow,
        prefixIcon: Icon(
          widget.icon,
          color: SnaporaColors.mainYellow,
        ),
        hintText: widget.hint,
        suffixIcon: widget.hasSuffix ? suffix() : null,
      ),
    );
  }

  OutlineInputBorder _border() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(20),
    );
  }

  Widget suffix() {
    return IconButton(
      icon: Icon(_isPasswordVisible
          ? Icons.visibility
          : Icons.visibility_off_outlined),
      color: SnaporaColors.mainYellow,
      onPressed: () {
        setState(() {
          _isPasswordVisible = !_isPasswordVisible;
        });
      },
    );
  }
}
