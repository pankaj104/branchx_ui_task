import 'dart:math';

import 'package:branchx_ui_test/basic/resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GoldCard extends StatefulWidget {
  bool isFrontBlueCard = true;

  GoldCard({Key? key}) : super(key: key);

  @override
  State<GoldCard> createState() => _GoldCardState();
}

class _GoldCardState extends State<GoldCard> {
  // double value 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity(),
          child: Card(
            elevation: 3,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            margin: const EdgeInsets.all(20),
            child: Container(
              height: 190.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  gradient: const LinearGradient(
                      colors: [Color(0xffC5A265), Color(0xff927748)])),
              child:
                  (widget.isFrontBlueCard) ? frontBlueCard() : backBlueCard(),
            ),
          ),
        ),
        Positioned(
          top: 53.h,
          right: 5.w,
          child: GestureDetector(
            child: Image.asset(
              Resource.cardButtonGold,
              height: 100.h,
              width: 60.w,
            ),
            onTap: () => setState(() {
              widget.isFrontBlueCard = !widget.isFrontBlueCard;
            }),
          ),
        ),
      ],
    );
  }
}

Widget frontBlueCard() {
  return Padding(
    padding: EdgeInsets.fromLTRB(20.w, 20.h, 10.w, 10.h),
    child: Stack(
      children: [
        Align(
          child: SvgPicture.asset(Resource.purity_24k),
          alignment: Alignment(0.8, -0.9),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Gold Card'.toUpperCase(),
              style: TextStyle(
                color: Color(0xffFFFFFF),
                fontFamily: 'Rubik',
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              'TODAY’s GOLD RATE',
              style: TextStyle(
                color: Color(0xffFFFFFF),
                fontFamily: 'Rubik',
                fontSize: 10.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 5.h),
            Row(
              children: [
                Text(
                  'Rs 5,245/gm ',
                  style: TextStyle(
                    color: Color(0xffF0EFEF),
                    fontFamily: 'Rubik',
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '+ GST',
                  style: TextStyle(
                    color: Color(0xffF0EFEF),
                    fontFamily: 'Rubik',
                    fontSize: 11.sp,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff1C0E59),
                    fixedSize: Size(130.w, 20.h),
                    alignment: Alignment.center,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Buy Jewelry'.toUpperCase(),
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Rubik',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                SizedBox(width: 5.w),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    fixedSize: Size(130.w, 20.h),
                    alignment: Alignment.center,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Buy Gold'.toUpperCase(),
                    style: TextStyle(
                        color: Color(0xff1C0E59),
                        fontFamily: 'Rubik',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

Widget backBlueCard() {
  return Padding(
    padding: EdgeInsets.fromLTRB(20.w, 20.h, 10.w, 10.h),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Gold Card'.toUpperCase(),
          style: TextStyle(
            color: Color(0xffFFFFFF),
            fontFamily: 'Rubik',
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 40.h),
        Text(
          'Available Gold'.toUpperCase(),
          style: TextStyle(
            color: Color(0xffFFFFFF),
            fontFamily: 'Rubik',
            fontSize: 10.sp,
            fontWeight: FontWeight.normal,
          ),
        ),
        SizedBox(height: 5.h),
        Row(
          children: [
            Text(
              '5.5245/gm',
              style: TextStyle(
                color: Color(0xffF0EFEF),
                fontFamily: 'Rubik',
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff1C0E59),
                fixedSize: Size(130.w, 20.h),
                alignment: Alignment.center,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Deliver Gold'.toUpperCase(),
                style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Rubik',
                    fontSize: 12,
                    fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(width: 5.w),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                fixedSize: Size(130.w, 20.h),
                alignment: Alignment.center,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Sell Gold'.toUpperCase(),
                style: const TextStyle(
                    color: Color(0xff1C0E59),
                    fontFamily: 'Rubik',
                    fontSize: 12,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
