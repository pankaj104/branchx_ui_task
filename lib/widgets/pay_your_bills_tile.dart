import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PayYourBillsTile extends StatelessWidget {
  const PayYourBillsTile({
    Key? key,
    required this.billTypeName,
    required this.billTypeIcon,
    this.onTap,
  }) : super(key: key);

  final String billTypeName;
  final String billTypeIcon;

  // onTap is optional here... for now no use of tap.
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xffF7F7F7),
                  gradient: const LinearGradient(
                    colors: [Color(0xffECECEC), Color(0xffFFFFFF)],
                    tileMode: TileMode.clamp,
                  ),
                  border: Border.all(color: Color(0xffF7F7F7), width: 1),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xffD2D2D2).withOpacity(0.6),
                        offset: Offset(10, 10),
                        spreadRadius: 0,
                        blurRadius: 40),
                    const BoxShadow(
                        color: Color(0xffFFFFFF),
                        offset: Offset(-10, -10),
                        spreadRadius: 0,
                        blurRadius: 20)
                  ]),
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      child: SvgPicture.asset(
                    billTypeIcon,
                  )),
                ],
              )),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          billTypeName,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: const TextStyle(
            color: Color(0xff404040),
            fontFamily: 'Rubik',
            fontSize: 13,
            fontWeight: FontWeight.normal,
          ),
        )
      ]),
    );
  }
}
