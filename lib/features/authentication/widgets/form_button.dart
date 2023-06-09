import 'package:flutter/material.dart';
import 'package:tiktoc_clne_re0/utils.dart';

class FormButton extends StatelessWidget {
  const FormButton({
    super.key,
    required this.disabled,
    this.text = 'Next',
  });

  final bool disabled;
  final String text;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: AnimatedContainer(
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: disabled
              ? isDarkMode(context)
                  ? Colors.grey.shade800
                  : Colors.grey.shade300
              : Theme.of(context).primaryColor,
        ),
        duration: const Duration(milliseconds: 500),
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 500),
          style: TextStyle(
            color: disabled ? Colors.grey.shade400 : Colors.white,
            fontWeight: FontWeight.bold,
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
