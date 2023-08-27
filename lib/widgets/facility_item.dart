import 'package:bwa_cozy/shared/theme.dart';
import 'package:flutter/material.dart';

class FacilityItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final int total;

  const FacilityItem(
      {required this.name,
      required this.imageUrl,
      required this.total,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 83,
      height: 61,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            width: 32,
          ),
          const SizedBox(height: 8),
          Text.rich(
            TextSpan(
              text: total.toString(),
              style: purpleTextStyle,
              children: <TextSpan>[
                TextSpan(text: ' ${name}', style: greyTextStyle)
              ],
            ),
          )
        ],
      ),
    );
  }
}
