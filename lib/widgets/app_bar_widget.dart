import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Widget leading;
  final bool centerTitle;
  final Widget trailing;
  final Widget title;
  final Color backgroundColor;
  final VoidCallback leadingfxn;
  final VoidCallback trailingfxn;

  const CustomAppBar({
    Key? key,
    required this.leading,
    this.centerTitle = false,
    required this.trailing,
    required this.title,
    required this.backgroundColor,
    required this.leadingfxn,
    required this.trailingfxn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: backgroundColor,
      child: Row(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              leadingfxn();
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(
                decoration: BoxDecoration(
                  border:
                      Border.all(width: 1, color: Colors.grey.withOpacity(0.5)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(9),
                  child: leading,
                ),
              ),
            ),
          ),
          const SizedBox(width: 15),
          title,
          const Spacer(),
          GestureDetector(
            onTap: () {
              trailingfxn();
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Container(
                decoration: BoxDecoration(
                  border:
                      Border.all(width: 1, color: Colors.grey.withOpacity(0.5)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: trailing,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
