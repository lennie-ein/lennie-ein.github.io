import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_ui_landing_page/utils/utils.dart';
import 'package:travel_ui_landing_page/widgets/widgets.dart';

import '../gen/assets.gen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppsColors.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Expanded(
                child: Assets.gallery.mTKENYALAKESEDITION1933.image(),
              ),
              Column(
                children: const [HeaderWidget(), FirstModule()],
              ),
            ]),
            const CategoriesWidget(),
            58.verticalSpaceFromWidth,
            const OurExperienceWidget(),
            32.verticalSpaceFromWidth,
            const FindPopularDestination(),
            32.verticalSpaceFromWidth,
            const TopDestinations(),
            37.verticalSpaceFromWidth,
            const CustomerFeedback(),
            28.verticalSpaceFromWidth,
            const NewsletterWidget(),
            15.verticalSpaceFromWidth,
            const FooterWidget()
          ],
        ),
      ),
    );
  }
}
