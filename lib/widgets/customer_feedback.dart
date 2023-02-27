import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_ui_landing_page/gen/assets.gen.dart';
import 'package:travel_ui_landing_page/models/review_model.dart';
import 'package:travel_ui_landing_page/utils/tripadvisor.dart';
import 'package:travel_ui_landing_page/utils/utils.dart';
import 'package:travel_ui_landing_page/widgets/review_container.dart';
import 'package:travel_ui_landing_page/widgets/widgets.dart';

class CustomerFeedback extends StatefulWidget {
  const CustomerFeedback({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomerFeedback> createState() => _CustomerFeedbackState();
}

class _CustomerFeedbackState extends State<CustomerFeedback> {
  late Future<review_model> reviews;

  @override
  void initState() {
    super.initState();
    reviews = Tripadvisor().getReviews();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultPadding(
      vertical: 58,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(245).r,
            child: Stack(
              children: [
                ColoredBox(
                  color: const Color(0xFFEE8162),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(85.0),
                    child: Assets.gallery.leSatima11.image(
                      width: 407.sm,
                      height: 563.sm,
                      fit: BoxFit.cover
                    ),
                  ),
                ),
              ],
            ),
          ),
          175.horizontalSpaceRadius,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 67.sm,
                  height: 8.sm,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4).w,
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFFFFD482),
                        Color(0xFFFFBE82),
                      ],
                    ),
                  ),
                ),
                12.verticalSpaceFromWidth,
                const ModuleHeadingTitle(
                  title: 'A Customer Said About Us:',
                ),
                26.verticalSpaceFromWidth,
                FutureBuilder<review_model>(
                    future: reviews,
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Text(snapshot.error.toString());
                      } else {
                        return ReviewContainer(snapshot.data!);

                      }

                      // ListView.builder(
                      //   // scrollDirection: Axis.horizontal,
                      //     itemCount: 1,
                      //     itemBuilder: (context, int index) {
                      //       return ReviewContainer(snapshot.data!);
                      //     });
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
