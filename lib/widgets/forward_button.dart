import 'package:flutter/material.dart';
import 'package:zaptek_ui/utils/colors.dart';

class ForwardButton extends StatelessWidget {
  const ForwardButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Material(
        borderRadius: BorderRadius.circular(7),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 1.5),
          child: Icon(
            Icons.arrow_forward_rounded,
            color: blackTextColor,
            size: 20,
          ),
        ),
      ),
    );
  }
}
