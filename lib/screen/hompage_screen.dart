import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:zaptek_ui/utils/colors.dart';
import 'package:zaptek_ui/widgets/app_bar_widget.dart';
import 'package:zaptek_ui/widgets/feeds_items_widget.dart';
import 'package:zaptek_ui/widgets/slider_widget.dart';
import 'package:zaptek_ui/widgets/tab_controller.dart';

import '../models/product_model.dart';
import '../provider/product_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    List<ProductModel> allProducts = productProvider.getProducts;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
              CustomAppBar(
                leading: SvgPicture.asset(
                  'assets/images/menu.svg',
                  height: 23,
                  width: 23,
                ),
                trailing: SvgPicture.asset(
                  'assets/images/shoppingbag.svg',
                  height: 23,
                  width: 23,
                  color: Colors.black,
                ),
                title: Image.asset(
                  'assets/images/nike.png',
                  height: 60,
                ),
                backgroundColor: backgroundColor,
                centerTitle: false,
                leadingfxn: () {},
                trailingfxn: () {},
              ),
              const SliderWidget(),
              const TabContollerWidget(),
              const SizedBox(
                height: 25,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: GridView.count(
                    shrinkWrap: true,
                    physics: const AlwaysScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 20,
                    padding: EdgeInsets.zero,
                    childAspectRatio: 0.65,
                    children: List.generate(4, (index) {
                      return ChangeNotifierProvider.value(
                          value: allProducts[index],
                          child: const FeedsItemsWidget());
                    }),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
