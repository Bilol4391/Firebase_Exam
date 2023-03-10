import '../../component/banner.dart';
import '../../component/category.dart';
import '../../component/custom_search.dart';
import '../../component/menu_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/home_controller.dart';




class HomePageShop extends StatefulWidget {
  const HomePageShop({Key? key}) : super(key: key);

  @override
  State<HomePageShop> createState() => _HomePageShopState();
}

class _HomePageShopState extends State<HomePageShop> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeController>()
        ..getBanners()
        ..getProduct()
        ..getCategory();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<HomeController>();
    final event = context.read<HomeController>();
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      // appBar: AppBar(title: Text("HomePage"),),
      body: SafeArea(
        child: Column(
          children: [
            const CustomSearchSection.CustomBottomButton(icon: "", height: 0),
            context.watch<HomeController>().isTotalLoading
                ? Center(child: CircularProgressIndicator())
                : Expanded(
              child: ListView(
                children: const [
                  Chegirma(),
                  Category(),
                  MenuListView(),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
