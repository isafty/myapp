import 'package:myapp/core/utils/app_assets.dart';

class OnBoardingModel {
  final String image;
  final String title;
  final String subtitle;

  OnBoardingModel({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}

List<OnBoardingModel> onBoardingData = [
  OnBoardingModel(
    image: AppAssets.onBoarding,
    title: 'Export the world with us1',
    subtitle: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit1.',
  ),
  OnBoardingModel(
    image: AppAssets.onBoarding2,
    title: 'Export the world with us2',
    subtitle: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
  ),
  OnBoardingModel(
    image: AppAssets.onBoarding1,
    title: 'Export the world with us3',
    subtitle: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit3.',
  ),
];
