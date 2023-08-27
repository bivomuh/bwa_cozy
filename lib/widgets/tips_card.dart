import 'package:bwa_cozy/models/tips.dart';
import 'package:bwa_cozy/shared/theme.dart';
import 'package:flutter/material.dart';

class TipsCard extends StatelessWidget {
  final TipsGuidanceModel tips;

  const TipsCard(this.tips, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      child: Row(
        children: [
          Image.asset(
            tips.imageUrl,
            height: 80,
            width: 80,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 16),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tips.name,
                style: blackTextStyle.copyWith(fontSize: 18),
              ),
              const SizedBox(height: 4),
              Text('Updated ${tips.updateAt}', style: greyTextStyle),
            ],
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.chevron_right,
                color: greyColor,
              ))
        ],
      ),
    );
  }
}
