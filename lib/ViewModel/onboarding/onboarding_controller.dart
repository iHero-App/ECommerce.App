import 'package:ecommerce/Models/slider_object_model.dart';
import 'package:ecommerce/Shared/Resource/images_mangment.dart';
import 'package:ecommerce/Shared/Resource/string_mangment.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController{
  late final List<SliderObject>? list = _getSliderData();
  final PageController pageController = PageController();
int currentIndex = 0;
bool isLast = false;

List<SliderObject> _getSliderData() => [
  SliderObject(
    subtitle: AppStrings.onBoardingSubtitle1,
    image: BaseImage.onBoarding1,
  ),
  SliderObject(
    subtitle: AppStrings.onBoardingSubtitle2,
    image: BaseImage.onBoarding2,
  ),
  SliderObject(
    subtitle: AppStrings.onBoardingSubtitle3,
    image: BaseImage.onBoarding3,
  ),
];

int getPreviousPage() {
  int previousIndex = --currentIndex;
  if (previousIndex == -1) {
    previousIndex = list!.length - 1;
  }
  return previousIndex;
}

int getNextPage() {
  int nextIndex = ++currentIndex;
  if (nextIndex == list!.length) {
    nextIndex = 0;
  }
  if (currentIndex == list!.length - 1) {
    isLast = true;
  } else {
    isLast == false;
  }
  return nextIndex;
}}