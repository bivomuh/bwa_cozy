import 'package:bwa_cozy/shared/theme.dart';
import 'package:flutter/material.dart';

class BottomNavbarItem extends StatelessWidget {
  final String imageUrl;
  final bool isActive;

  const BottomNavbarItem(
      {required this.imageUrl, required this.isActive, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Container(
          height: 26,
          width: 26,
          child: Image.asset(imageUrl),
        ),
        const Spacer(),
        isActive
            ? Container(
                height: 2,
                width: 30,
                decoration: BoxDecoration(
                  color: purpleColor,
                  borderRadius: BorderRadius.circular(1000),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
