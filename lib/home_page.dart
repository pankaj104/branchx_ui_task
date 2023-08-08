import 'package:branchx_ui_test/basic/resource.dart';
import 'package:branchx_ui_test/custom_drawer_page.dart';
import 'package:branchx_ui_test/top_carousel_slide.dart';
import 'package:branchx_ui_test/widgets/carousel_slide_card.dart';
import 'package:branchx_ui_test/widgets/custom_bottom_navigation_bar.dart';
import 'package:branchx_ui_test/widgets/main_category_design.dart';
import 'package:branchx_ui_test/widgets/pay_your_bill_design.dart';
import 'package:branchx_ui_test/widgets/status_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (BuildContext context, Widget? child) {
      return Scaffold(
        backgroundColor: Colors.white,
        drawer: CustomDrawerPage(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 50.h,
          elevation: 0,
          title: SvgPicture.asset(
            Resource.branchXLogo,
          ),
          leadingWidth: 60.w,
          titleSpacing: 0,
          leading: Builder(
            builder: (context) => Row(
              children: [
                SizedBox(
                  width: 10.w,
                ),
                IconButton(
                  icon: SvgPicture.asset(Resource.navigationIcon),
                  iconSize: 32.w,
                  onPressed: () async {
                    await Future.delayed(Duration(milliseconds: 10));
                    Scaffold.of(context).openDrawer();
                  },
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                ),
              ],
            ),
          ),
          actions: [
            IconButton(
              icon: SvgPicture.asset(Resource.bellNotification),
              iconSize: 32.w,
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset(Resource.logout),
              iconSize: 32.w,
              onPressed: () {},
            ),
            SizedBox(
              width: 5.w,
            )
          ],
        ),
        floatingActionButton: Stack(
          fit: StackFit.expand,
          children: [
            Align(
              alignment: const Alignment(1.3, 1.1),
              child: SvgPicture.asset(Resource.whatsapp),
            ),
            Align(
              alignment: const Alignment(0.07, 1.12),
              child: CircleAvatar(
                backgroundColor: const Color(0xffFF808D),
                radius: 30,
                child: SvgPicture.asset(Resource.xenie),
              ),
            ),
          ],
        ),

        // Bottom Navigation bar
        bottomNavigationBar: CustomButtonNavigationBar(),

        body: SingleChildScrollView(
          child: Container(
              decoration: const BoxDecoration(
                color: Color(0xffF7F7F7),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    // Status Bar
                    child: StatusBar(),
                  ),

                  TopCarouselCard(),

                  const SizedBox(
                    height: 10,
                  ),

                  // main Category container area (like: gold, scan & pay, Jewelry...)
                  MainCategoryDesign(),

                  SizedBox(height: 10.h),

                  CarouselSlideCard(),
                  SizedBox(height: 20.h),

                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Pay your Bills',
                          style: TextStyle(
                            color: Color(0xff404040),
                            fontFamily: 'Rubik',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),

                  // Pay your bill Container area
                  PayYourBillDesign(),

                  SizedBox(
                    height: 60.h,
                  ),
                ],
              )),
        ),
      );
    });
  }
}
