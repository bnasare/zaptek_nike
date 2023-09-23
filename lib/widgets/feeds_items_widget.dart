import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zaptek_ui/utils/colors.dart';
import 'package:zaptek_ui/widgets/forward_button.dart';

import '../models/product_model.dart';
import 'text_widget.dart';

class FeedsItemsWidget extends StatefulWidget {
  const FeedsItemsWidget({super.key});

  @override
  State<FeedsItemsWidget> createState() => _FeedsItemsWidgetState();
}

class _FeedsItemsWidgetState extends State<FeedsItemsWidget> {
  @override
  Widget build(BuildContext context) {
    final productModel = Provider.of<ProductModel>(context);

    return InkWell(
      onTap: () {},
      child: Material(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[300],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 20),
              child: Image.asset(
                productModel.image,
                height: MediaQuery.of(context).size.height * 0.17,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23, right: 20, top: 25),
              child: TextWidget(
                text: productModel.title,
                maxLines: 1,
                color: blackTextColor,
                textSize: 20,
                isTitle: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23, right: 20, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: '\$${productModel.price}',
                    maxLines: 1,
                    color: blackTextColor,
                    textSize: 20,
                    isTitle: false,
                  ),
                  const ForwardButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
