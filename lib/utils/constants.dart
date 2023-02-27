import 'package:flutter/material.dart';
import 'package:travel_ui_landing_page/gen/assets.gen.dart';
import 'package:travel_ui_landing_page/models/models.dart';
import 'package:travel_ui_landing_page/utils/utils.dart';

const navigation = [
  'Home',
  'About us',
  'Destinations',
  'Tours',

];

final categories = [
  Catergory(
      title: 'Beach',
      image: Assets.gallery.diani.path),
  Catergory(title: 'Desert', image: Assets.gallery.chalbi.path),
  Catergory(title: 'Mountain', image: Assets.gallery.mtKenyaMackindersCamp20.path),
  Catergory(title: 'Safaris', image: Assets.gallery.safaris.path),
  Catergory(title: 'Hikes', image: Assets.gallery.leSatima3.path),

];

final destinations = [
  PopularDestination(
    title: 'Mt. Kenya',
    description: '5 Days, Up Chogoria Down Sirimon',
    price: 650,
    buttonBackgroundColor: AppsColors.defaultTextColor,
    buttonTextColor: Colors.white,
    image: Assets.gallery.mTKENYALAKESEDITION1919.path,
  ),
  PopularDestination(
    title: 'Mt. Kenya',
    description: '4 Days, Up and Down through Sirimon',
    price: 630,
    image: Assets.gallery.mTKENYALAKESEDITION1918.path,
  ),
  PopularDestination(
    title: 'Mt. Kilimanjaro',
    description: '7 Days, Machame Route',
    price: 900,
    image: Assets.gallery.kilimanjaro.path,
  ),
  PopularDestination(
    title: 'Nairobi Day Tour',
    description: 'A day round the bespoke Kenyan Capital',
    price: 200,
    buttonBackgroundColor: AppsColors.defaultTextColor,
    buttonTextColor: Colors.white,
    image: Assets.gallery.nairobipark.path,
  ),
];
