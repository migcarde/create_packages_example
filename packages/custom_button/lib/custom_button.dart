library custom_button;

import 'package:flutter/widgets.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    required this.onTap,
    required this.enabled,
    this.padding,
    this.decoration,
  }) : super(key: key);

  final Text text;
  final EdgeInsets? padding;
  final Decoration? decoration;
  final VoidCallback onTap;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: enabled ? onTap : null,
      child: Container(
        padding: padding,
        decoration: decoration,
        child: text,
      ),
    );
  }
}
