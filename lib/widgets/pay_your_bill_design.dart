import 'package:branchx_ui_test/basic/resource.dart';
import 'package:branchx_ui_test/widgets/pay_your_bills_tile.dart';
import 'package:flutter/material.dart';

class PayYourBillDesign extends StatelessWidget {
  const PayYourBillDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      primary: false,
      padding: const EdgeInsets.all(0),
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      children: const [
        PayYourBillsTile(billTypeName: 'Bills', billTypeIcon: Resource.bills),
        PayYourBillsTile(
            billTypeName: 'Recharge', billTypeIcon: Resource.recharge),
        PayYourBillsTile(billTypeName: 'DTH', billTypeIcon: Resource.dth),
        PayYourBillsTile(
            billTypeName: 'Electricity', billTypeIcon: Resource.electricity),
        PayYourBillsTile(
            billTypeName: 'Internet', billTypeIcon: Resource.internet),
        PayYourBillsTile(
            billTypeName: 'Postpaid', billTypeIcon: Resource.postpaid),
        PayYourBillsTile(
            billTypeName: 'Postpaid', billTypeIcon: Resource.postpaid2),
        PayYourBillsTile(
            billTypeName: 'View All', billTypeIcon: Resource.viewAll),
      ],
    );
  }
}
