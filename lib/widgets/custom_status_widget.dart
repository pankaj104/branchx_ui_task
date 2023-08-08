import 'package:branchx_ui_test/widgets/status_view.dart';
import 'package:flutter/material.dart';

class CustomStatusWidget extends StatelessWidget {
  const CustomStatusWidget({
    Key? key,
    required this.statusName,
    required this.statusThumbnail,
  }) : super(key: key);

  final String statusName;
  final String statusThumbnail;

  // onTap is optional here... for now no use of tap.
  // final Widget? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) => StatusView(),
        );
      },
      child: Column(children: [
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(40),
                  ),
                  border: Border.all(
                    width: 2,
                    color: Color(0xff80A0FF),
                    style: BorderStyle.solid,
                  ),
                ),
                child: Image.asset(statusThumbnail),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                statusName,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: const TextStyle(
                  color: Color(0xff404040),
                  fontFamily: 'Rubik',
                  fontSize: 10,
                  fontWeight: FontWeight.normal,
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
