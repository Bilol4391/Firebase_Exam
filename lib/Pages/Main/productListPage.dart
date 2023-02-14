import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../component/customProduct_search.dart';
import '../../component/product_section.dart';


class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            CustomProductSearchSection.CustomBottomButton(icon: "", height: 0),
            ProductSection(),
          ],
        ),
      )
    );
  }
}
