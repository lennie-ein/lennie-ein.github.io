import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_ui_landing_page/gen/assets.gen.dart';
import 'package:travel_ui_landing_page/utils/utils.dart';

class SaltyLogo extends StatelessWidget {
  const SaltyLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Assets.gallery.archtreksIcon.image(
        //
        // ),
        // 6.verticalSpace,
        Text(
          'Arch Treks & Safaris',
          style: GoogleFonts.allura(
            fontSize: 25.sp,
            fontWeight: FontWeight.w700,
            color: AppsColors.defaultTextColor,
          ),
        ),
      ],
    );
  }
}
