import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_ui_landing_page/gen/assets.gen.dart';
import 'package:travel_ui_landing_page/utils/utils.dart';

class NewsletterWidget extends StatelessWidget {
  const NewsletterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultPadding(
      vertical: 46,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 1170.sm,
            height:458.sm,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30).r,
              color: const Color(0xFFFFD482),
            ),
            child: Assets.intersect.image(),
          ),
          Column(
            children: [
              Text(
                'Book your safari with us',
                style: TextStyles.inter(
                  fontSize: 40.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              16.verticalSpaceFromWidth,
              Text(
                'Give us a few details of how you would like your safari',
                style: inter16,
              ),
              20.verticalSpaceFromWidth,
              Container(
                width: 450.sm,
                height: 230.sm,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12).r,
                  color: Colors.white38,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 10,
                      ).r,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Enter Your email address',

                                // contentPadding: EdgeInsets.symmetric(
                                //   horizontal: 30,
                                //   vertical: 15,
                                // ).w,
                                hintStyle: inter16,
                              ),
                              textAlignVertical: TextAlignVertical.center,
                            ),
                          ),
                          // Container(
                          //   width: 40.sm,
                          //   height: 40.sm,
                          //   decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(12).r,
                          //     color: AppsColors.buttonColor,
                          //   ),
                          //   child: Assets.icons.sendIcon.image(
                          //     color: Colors.white,
                          //     width: 15.83.sm,
                          //     height: 17.08.sm,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 10,
                      ).r,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Enter Safari Details',
                                // contentPadding: EdgeInsets.symmetric(
                                //   horizontal: 30,
                                //   vertical: 15,
                                // ).w,
                                hintStyle: inter16,
                              ),
                              textAlignVertical: TextAlignVertical.center,
                            ),
                          ),
                          // Container(
                          //   width: 40.sm,
                          //   height: 40.sm,
                          //   decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(12).r,
                          //     color: AppsColors.buttonColor,
                          //   ),
                          //   child: Assets.icons.sendIcon.image(
                          //     color: Colors.white,
                          //     width: 15.83.sm,
                          //     height: 17.08.sm,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 24.sm,
                          vertical: 19.sm,
                        ),
                        maximumSize: Size(160, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27).r,
                          side: const BorderSide(
                            color: AppsColors.buttonColor,
                            width: 1.4,
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            'Send Email',
                            style: GoogleFonts.poppins(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: AppsColors.buttonColor,
                            ),
                          ),
                          6.horizontalSpace,
                          const Icon(CupertinoIcons.envelope_badge, size: 16,color: AppsColors.buttonColor, ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
