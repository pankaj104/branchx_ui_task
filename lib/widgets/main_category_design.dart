import 'package:branchx_ui_test/basic/resource.dart';
import 'package:branchx_ui_test/widgets/category_grid_tile.dart';
import 'package:flutter/material.dart';

class MainCategoryDesign extends StatelessWidget {
  const MainCategoryDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      primary: false,
      padding: const EdgeInsets.all(0),
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      children: const [
        CategoryGridTile(categoryName: 'Gold', categoryIcon: Resource.gold),
        CategoryGridTile(
            categoryName: 'Scan & Pay', categoryIcon: Resource.scanAndPay),
        CategoryGridTile(
            categoryName: 'Jewelry', categoryIcon: Resource.jewelry),
        CategoryGridTile(
            categoryName: 'Insurance', categoryIcon: Resource.insurance),
        CategoryGridTile(
            categoryName: 'Refer & Earn', categoryIcon: Resource.referAndEarn),
        CategoryGridTile(
            categoryName: 'Spin Win', categoryIcon: Resource.spinWin),
        CategoryGridTile(
            categoryName: 'Send Money', categoryIcon: Resource.sendMoney),
        CategoryGridTile(
            categoryName: 'Recharge & Bill',
            categoryIcon: Resource.rechargAndBill),
        CategoryGridTile(
            categoryName: 'Passbook', categoryIcon: Resource.passbook),
      ],
    );
  }
}
