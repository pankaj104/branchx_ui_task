import 'package:branchx_ui_test/basic/resource.dart';
import 'package:branchx_ui_test/widgets/category_grid_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 50.h,
        automaticallyImplyLeading: true,
        elevation: 0,
        leading: Row(
          children: [
            SizedBox(
              width: 20.w,
            ),
            SvgPicture.asset(
              Resource.branchXLogo,
            ),
          ],
        ),
        leadingWidth: 100.w,
        actions: [
          IconButton(
              icon: SvgPicture.asset(Resource.closeButton),
              iconSize: 32.w,
              onPressed: () async {
                await Future.delayed(Duration(milliseconds: 10));
                Navigator.pop(context);
              }),
          SizedBox(
            width: 10.w,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 0.78.sh,
                decoration: const BoxDecoration(
                  color: Color(0xffF7F7F7),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      GridView.count(
                        crossAxisCount: 3,
                        shrinkWrap: true,
                        primary: false,
                        padding: const EdgeInsets.all(0),
                        crossAxisSpacing: 4,
                        mainAxisSpacing: 4,
                        children: const [
                          CategoryGridTile(
                              categoryName: 'branchX',
                              categoryIcon: Resource.branchX),
                          CategoryGridTile(
                              categoryName: 'X Gold',
                              categoryIcon: Resource.gold),
                          CategoryGridTile(
                              categoryName: 'Scan & Pay',
                              categoryIcon: Resource.scanAndPay),
                          CategoryGridTile(
                              categoryName: 'Send Money',
                              categoryIcon: Resource.sendMoney),
                          CategoryGridTile(
                              categoryName: 'Jewelry',
                              categoryIcon: Resource.jewelry),
                          CategoryGridTile(
                              categoryName: 'Spin Win',
                              categoryIcon: Resource.spinWin),
                          CategoryGridTile(
                              categoryName: 'Rewards',
                              categoryIcon: Resource.rewards),
                          CategoryGridTile(
                              categoryName: 'Wallet',
                              categoryIcon: Resource.wallet),
                          CategoryGridTile(
                              categoryName: 'Insurance',
                              categoryIcon: Resource.insurance),
                          CategoryGridTile(
                              categoryName: 'Pay Bills',
                              categoryIcon: Resource.payBills),
                          CategoryGridTile(
                              categoryName: 'Support',
                              categoryIcon: Resource.support),
                          CategoryGridTile(
                              categoryName: 'Passbook',
                              categoryIcon: Resource.passbook),
                          CategoryGridTile(
                              categoryName: 'Language',
                              categoryIcon: Resource.language),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      )
                    ],
                  ),
                )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: 0.10.sh,
                  child: Row(
                    children: [
                      SvgPicture.asset(Resource.profilePic),
                      SizedBox(
                        width: 10.w,
                      ),
                      Expanded(
                        child: Text(
                          'Rohan Vijapur',
                          style: TextStyle(
                            color: Color(0xff404040),
                            fontFamily: 'Rubik',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: SvgPicture.asset(Resource.logout2),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
