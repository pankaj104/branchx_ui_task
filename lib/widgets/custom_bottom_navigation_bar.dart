import 'package:branchx_ui_test/basic/resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButtonNavigationBar extends StatelessWidget {
  const CustomButtonNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10.0,
        color: Colors.blue,
        child: Container(
          height: 80,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(Resource.myCards),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'My Cards'.toUpperCase(),
                      style: const TextStyle(
                        color: Color(0xff404040),
                        fontFamily: 'Rubik',
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 34,
                    ),
                    Text(
                      'Xenie'.toUpperCase(),
                      style: const TextStyle(
                        color: Color(0xff404040),
                        fontFamily: 'Rubik',
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(Resource.myProfile),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'My Profile'.toUpperCase(),
                      style: const TextStyle(
                        color: Color(0xff404040),
                        fontFamily: 'Rubik',
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
