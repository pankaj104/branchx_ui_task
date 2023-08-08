import 'package:branchx_ui_test/basic/resource.dart';
import 'package:branchx_ui_test/widgets/custom_status_widget.dart';
import 'package:branchx_ui_test/widgets/status_view.dart';
import 'package:flutter/material.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          CustomStatusWidget(
              statusName: '#kaahani',
              statusThumbnail: Resource.kaahaniThumbnail),
          CustomStatusWidget(
              statusName: '#winner', statusThumbnail: Resource.winnerThumbnail),
          CustomStatusWidget(
              statusName: '#bikashbabu',
              statusThumbnail: Resource.bikashbabuThumbnail),
          CustomStatusWidget(
              statusName: '#gold', statusThumbnail: Resource.goldThumbnail),
          CustomStatusWidget(
              statusName: '#update',
              statusThumbnail: Resource.kaahaniThumbnail),
          CustomStatusWidget(
              statusName: '#winner', statusThumbnail: Resource.winnerThumbnail),
        ],
      ),
    );
  }
}
