import 'package:branchx_ui_test/basic/resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StatusView extends StatefulWidget {
  const StatusView({Key? key}) : super(key: key);

  @override
  State<StatusView> createState() => _StatusViewState();
}

class _StatusViewState extends State<StatusView>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 6000), vsync: this);
    animation = Tween(begin: 0.1, end: 1.0).animate(controller)
      ..addListener(() {
        setState(() {});
      });
    controller.repeat();
  }

  @override
  void dispose() {
    controller.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 1.sh,
        width: 1.sw,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Resource.statusMan),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 15.w, right: 8.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  statusBarLine(),
                  SizedBox(
                    width: 7.w,
                  ),
                  statusBarLine(),
                  SizedBox(
                    width: 7.w,
                  ),
                  statusBarLine(),
                  SizedBox(
                    width: 7.w,
                  ),
                  statusBarLine(),
                  SizedBox(
                    width: 7.w,
                  ),
                  SizedBox(
                      height: 4.h,
                      width: 50.w,
                      child: LinearProgressIndicator(
                        value: animation.value,
                      ))
                ],
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(top: 15.h, right: 5.h),
                  child: IconButton(
                    icon: SvgPicture.asset(
                      Resource.statusCloseButton,
                      height: 24.h,
                      width: 24.h,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget statusBarLine() {
  return Container(
    height: 4.h,
    width: 60.w,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r), color: Color(0xff80A0FF)),
  );
}
