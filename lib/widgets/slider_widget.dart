import 'package:flutter/material.dart';
import 'package:zaptek_ui/utils/colors.dart';
import 'package:zaptek_ui/widgets/text_widget.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Container(
                  height: MediaQuery.sizeOf(context).height * 0.2,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30, left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: '20%',
                                style: TextStyle(
                                    fontSize:
                                        30, // Adjust the font size as needed
                                    fontWeight: FontWeight
                                        .bold, // You can customize other styles here
                                    color: blackTextColor,
                                    letterSpacing: 1.3),
                              ),
                              TextSpan(
                                text: ' Discount',
                                style: TextStyle(
                                    fontSize:
                                        20, // Adjust the font size as needed
                                    fontWeight: FontWeight
                                        .bold, // You can customize other styles here
                                    color: blackTextColor,
                                    letterSpacing: 2.5),
                              ),
                            ],
                          ),
                        ),
                        TextWidget(
                          text: 'on your first purchase',
                          color: blackTextColor,
                          textSize: 15,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Material(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 28, vertical: 10),
                            child: TextWidget(
                              text: 'Shop now',
                              color: whiteTextColor,
                              textSize: 12,
                              isTitle: true,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                bottom: 45,
                left: 170,
                child: Image.asset(
                  'assets/images/img_green1.png',
                  width: 230,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.circle,
                size: 10,
              ),
              const SizedBox(width: 10),
              Icon(
                Icons.circle,
                size: 10,
                color: Colors.grey.shade300,
              ),
              const SizedBox(width: 10),
              Icon(
                Icons.circle,
                size: 10,
                color: Colors.grey.shade300,
              ),
              const SizedBox(width: 10),
              Icon(
                Icons.circle,
                size: 10,
                color: Colors.grey.shade300,
              ),
            ],
          )
        ],
      ),
    );
  }
}
