import 'package:flutter/material.dart';

import '../utils/colors.dart';
import 'text_widget.dart';

class TabContollerWidget extends StatelessWidget {
  const TabContollerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              child: Material(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: TextWidget(
                    text: 'All',
                    color: whiteTextColor,
                    textSize: 16,
                    isTitle: true,
                  ),
                ),
              ),
            ),
            Material(
              borderRadius: BorderRadius.circular(20),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                child: TextWidget(
                  text: 'Running',
                  color: greyTextColor,
                  textSize: 16,
                  isTitle: true,
                ),
              ),
            ),
            Material(
              borderRadius: BorderRadius.circular(20),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
                child: TextWidget(
                  text: 'Sneakers',
                  color: greyTextColor,
                  textSize: 16,
                  isTitle: true,
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(20),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
                child: TextWidget(
                  text: 'Formal',
                  color: greyTextColor,
                  textSize: 16,
                  isTitle: true,
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(20),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: TextWidget(
                  text: 'Casual',
                  color: greyTextColor,
                  textSize: 16,
                  isTitle: true,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
