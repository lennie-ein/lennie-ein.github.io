import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/review_model.dart';
import '../utils/text_styles.dart';
import 'modules_heading_widget.dart';

Widget ReviewContainer(review_model review) {


  return Container(
    padding: const EdgeInsets.all(30).r,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(14).w,
    ),
    child: Column(
      children: [
        Text(
          review.data[0].text.toString(),
          style: TextStyles.inter(
            fontSize: 18.sp,
          ),
        ),
        Row(
          children: [
            ...List.generate(
              5,
              (index) => const Icon(
                Icons.star_rate_rounded,
                color: Color(0xFFFFC14B),
              ),
            ).toList()
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  review.data[0].user.username,
                  style: TextStyles.inter(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  review.data[0].tripType,
                  style: TextStyles.inter(
                    fontSize: 12.sp,
                  ),
                ),
              ],
            ),
            const ModuleHeadingNextPreviousButton()
          ],
        ),
      ],
    ),
  );
}
