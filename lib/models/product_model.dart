import 'package:flutter/material.dart';

class ProductModel with ChangeNotifier {
  final String id, title, image;
  final double price;

  ProductModel({
    required this.id,
    required this.title,
    required this.image,
    required this.price,
  });
}
