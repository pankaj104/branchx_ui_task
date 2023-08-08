import 'dart:math';
import 'package:branchx_ui_test/basic/resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BlueCard extends StatefulWidget {
  bool isFrontBlueCard = true;

  BlueCard({Key? key}) : super(key: key);

  @override
  State<BlueCard> createState() => _BlueCardState();
}

class _BlueCardState extends State<BlueCard> {
  // double value 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity(),
          // transform: !widget.isFrontBlueCard ? ( Matrix4.identity()..setEntry(3,2,0.001)..rotateX(0) ) : Matrix4.identity()..setEntry(3,2,0.001)..rotateX(-180),

          // transform: Matrix4.identity()..setEntry(3,2,0.001)..rotateY((widget.value < 0.5 ) ? pi * widget.value : (pi * (1 + widget.value))),
          child: Card(
            elevation: 3,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            margin: const EdgeInsets.all(20),
            child: Container(
              height: 190.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: const LinearGradient(
                      colors: [Color(0xff80A0FF), Color(0xff5275DE)])),
              child:
                  (widget.isFrontBlueCard) ? frontBlueCard() : backBlueCard(),
            ),
          ),
        ),

        Positioned(
          top: 55.h,
          right: 18.w,
          child: GestureDetector(
            child: Image.asset(Resource.cardButtonBlue),
            onTap: () => setState(() {
              widget.isFrontBlueCard = !widget.isFrontBlueCard;
            }),
          ),
        ),

        // Slider(value: widget.value, min: 0, max: 1, onChanged: (newValue){
        //   setState(() {
        //     widget.value = newValue;
        //   });
        // }
        //
        // ),
      ],
    );
  }
}

Widget frontBlueCard() {
  return Padding(
    padding: EdgeInsets.fromLTRB(20.w, 20.h, 10.w, 10.h),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                'Namaste,',
                style: TextStyle(
                  color: Color(0xffF0EFEF),
                  fontFamily: 'Rubik',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Text(
              'Full Kyc'.toUpperCase(),
              style: TextStyle(
                color: Color(0xffF0EFEF),
                fontFamily: 'Rubik',
                fontSize: 10.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              width: 3.w,
            ),
            SvgPicture.asset(Resource.kycVarified),
            SizedBox(
              width: 10.w,
            )
          ],
        ),
        Text(
          'Sayeed'.toUpperCase(),
          style: TextStyle(
            color: Color(0xffFFFFFF),
            fontFamily: 'Rubik',
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 30.h),
        Text(
          'Wallet Balance'.toUpperCase(),
          style: TextStyle(
            color: Color(0xffFFFFFF),
            fontFamily: 'Rubik',
            fontSize: 9.sp,
            fontWeight: FontWeight.normal,
          ),
        ),
        Row(
          children: [
            Text(
              '₹ XXX.XX',
              style: TextStyle(
                color: Color(0xffF0EFEF),
                fontFamily: 'Rubik',
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: 7.w),
            SvgPicture.asset(Resource.eyeIcon),
          ],
        ),
        SizedBox(height: 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: Text(
                'addMoney'.toUpperCase(),
                style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Rubik',
                    fontSize: 12,
                    fontWeight: FontWeight.normal),
              ),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff1C0E59),
                fixedSize: Size(130.w, 20.h),
                alignment: Alignment.center,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              onPressed: () {},
            ),
            SizedBox(width: 5.w),
            ElevatedButton(
              child: Text(
                'Acc Details'.toUpperCase(),
                style: const TextStyle(
                    color: Color(0xff1C0E59),
                    fontFamily: 'Rubik',
                    fontSize: 12,
                    fontWeight: FontWeight.normal),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                fixedSize: Size(130.w, 20.h),
                alignment: Alignment.center,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              onPressed: () {},
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
        Row(
          children: [
            Expanded(
              child: Text(
                'Namaste,',
                style: TextStyle(
                  color: Color(0xffF0EFEF),
                  fontFamily: 'Rubik',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Text(
              'Account Details'.toUpperCase(),
              style: TextStyle(
                color: Color(0xffF0EFEF),
                fontFamily: 'Rubik',
                fontSize: 10.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Text(
          'Sayeed'.toUpperCase(),
          style: TextStyle(
            color: Color(0xffFFFFFF),
            fontFamily: 'Rubik',
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 40.h),
        Text(
          'Account No.',
          style: TextStyle(
            color: Color(0xffFFFFFF),
            fontFamily: 'Rubik',
            fontSize: 9.sp,
            fontWeight: FontWeight.normal,
          ),
        ),
        Row(
          children: [
            Text(
              '2011254586254',
              style: TextStyle(
                color: Color(0xffF0EFEF),
                fontFamily: 'Rubik',
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: 7.w),
            SvgPicture.asset(Resource.copyIcon),
          ],
        ),
        SizedBox(height: 14.h),
        Text(
          'IIFC',
          style: TextStyle(
            color: Color(0xffFFFFFF),
            fontFamily: 'Rubik',
            fontSize: 9.sp,
            fontWeight: FontWeight.normal,
          ),
        ),
        Row(
          children: [
            Text(
              'ICICI00004',
              style: TextStyle(
                color: Color(0xffF0EFEF),
                fontFamily: 'Rubik',
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: 7.w),
            SvgPicture.asset(Resource.copyIcon),
          ],
        ),
      ],
    ),
  );
}
