import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../gen/assets.gen.dart';
import '../widgets/destinations/mountains_widget.dart';

class DestinationPage extends StatefulWidget {
  const DestinationPage({Key? key}) : super(key: key);

  @override
  State<DestinationPage> createState() => _DestinationPageState();
}

class _DestinationPageState extends State<DestinationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(children: [
              Expanded(
                child: Assets.gallery.mTKENYALAKESEDITION701.image(),
              ),
              Center(
                heightFactor: 6,
                child: Text(
                  "Destinations",
                  style: GoogleFonts.londrinaOutline(
                      fontSize: 90,
                      textStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),
            ]),
            const MountainsWidget(),
          ],
        ),
      ),
    );
  }
}
