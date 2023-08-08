import 'package:branchx_ui_test/basic/resource.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final  imagesList = [
  firstSlide('Introducing \nbranchX Gold', 'Buy digital gold, sell gold, \nJewelry and get gold coins.', 'Register now', Resource.xeniePhoto ),
  firstSlide('Refer Your \nfriends', 'Earn Rupee 150/- for every\nSuccessful refer', 'Refer & Earn', Resource.xeniePhoto ),
  firstSlide('Get Your RAJA RANI\ncombo today!', 'Withdraw money from\nanywhere in India.', 'Apply Now', Resource.xeniePhoto ),
  firstSlide('Suraksha with\nbranchX!', 'With your cards, get 1 lakh\nfree insurance policy.','Activate Now', Resource.xeniePhoto ),

];

class CarouselSlideCard extends StatefulWidget {
  @override
  _CarouselSlideCardState createState() => _CarouselSlideCardState();
}

class _CarouselSlideCardState extends State<CarouselSlideCard> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: Column(
        children: [
         CarouselSlider(items: imagesList,
             options: CarouselOptions(
                 autoPlay: false,
                 height: 200.0,
                 enableInfiniteScroll: false,
                 enlargeCenterPage: false,
                 viewportFraction: 1,
                 padEnds: false,
                 onPageChanged: (index, reason)
                 {
                   setState(() {
                     _currentIndex = index;
                   });
                 }
             )),

          // CarouselSlider(
          //   options: CarouselOptions(
          //     height: 200.0,
          //     autoPlay: true,
          //     viewportFraction: 1,
          //     enableInfiniteScroll: false,
          //     animateToClosest: false,
          //     enlargeCenterPage: false,
          //     padEnds: true,
          //     pageSnapping: true,
          //     autoPlayCurve: Curves.easeInOut,
          //     onPageChanged: (index, reason) {
          //       setState(
          //             () {
          //           _currentIndex = index;
          //         },
          //       );
          //     },
          //   ),
          //   items: imagesList
          //       .map(
          //         (item) =>
          //         Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child:  imagesList[_currentIndex],
          //         ),
          //   )
          //       .toList(),
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imagesList.map((urlOfItem) {
              int index = imagesList.indexOf(urlOfItem);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: ShapeDecoration(
                  shape: CircleBorder(side: BorderSide(width: 1, color: Color(0xffFF808D))),
                  color: _currentIndex == index
                      ? Color(0xffFF808D)
                      : Colors.white
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}

Widget firstSlide( String title, String subTitle, String buttonLabel, String carousel_image ) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Container(
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: const Color(0xff364B8A),
        gradient: title == ('Refer Your \nfriends') || title == ('Suraksha with\nbranchX!')  ?
        const LinearGradient(colors: [
          Color(0xff5275DE),
          Color(0xff80A0FF),
        ],) : null ,
        image: DecorationImage(
          image: AssetImage(carousel_image),
          alignment: Alignment(0.8,0.8),
          fit: BoxFit.scaleDown,
        ),
      ),

      child: Padding(
        padding: const EdgeInsets.only(top: 15, left: 15),
        child:
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(color: Colors.white,fontFamily: 'Rubik', fontSize: 16.sp, fontWeight: FontWeight.bold,),),
                SizedBox(height: 10.h,),
                Text(subTitle, style: TextStyle(color: Colors.white, fontFamily: 'Rubik', fontSize: 13.sp, fontWeight: FontWeight.normal,),),
                SizedBox(height: 30.h,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: ElevatedButton(
                    child: Text(buttonLabel.toUpperCase(), style: TextStyle(color: Color(0xff1C0E59), fontFamily: 'Rubik', fontSize: 12.sp, fontWeight: FontWeight.normal),),
                    style: ElevatedButton.styleFrom(primary: Colors.white, fixedSize: Size(280.w, 30.h),
                      alignment: Alignment.center,
                      side: BorderSide(color: Colors.white, width: 1.w),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

