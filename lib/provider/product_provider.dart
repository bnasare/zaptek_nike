import 'package:flutter/material.dart';

import '../models/product_model.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> get getProducts {
    return productsList;
  }

  static final List<ProductModel> productsList = [
    ProductModel(
      id: 'AirMax97',
      title: 'Air Max 97',
      price: 20.99,
      image: 'assets/images/img_yellowshoe.png',
    ),
    ProductModel(
      id: 'ReactPresto',
      title: 'React Presto',
      price: 25.99,
      image: 'assets/images/img_15947562301615.png',
    ),
    ProductModel(
      id: 'Nike1',
      title: 'RoadRunner',
      price: 139.99,
      image: 'assets/images/img_toppng.png',
    ),
    ProductModel(
      id: 'Nike2',
      title: 'Roshe Run',
      price: 79.99,
      image: 'assets/images/img_shoe1.png',
    ),
  ];
}
