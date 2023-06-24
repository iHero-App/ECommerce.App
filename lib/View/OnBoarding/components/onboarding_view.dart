import 'package:ecommerce/Models/slider_object_model.dart';
import 'package:ecommerce/Shared/Resource/color_mangment.dart';
import 'package:ecommerce/Shared/Resource/size_mangment.dart';
import 'package:ecommerce/Shared/Resource/view_mangment.dart';
import 'package:ecommerce/Shared/components/text_widget.dart';
import 'package:ecommerce/ViewModel/onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingView extends StatelessWidget {
  final SliderObject? sliderObject;
  const OnBoardingView(this.sliderObject, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingController>(
      builder: (controller) => Padding(
        padding: EdgeInsets.only(
          right: PaddingEdit.p30,
          left: PaddingEdit.p30,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // SizedBox(
            //   width: Get.width,
            //   child: TextWidget(
            //       Title: sliderObject!.title,
            //       FontWeight: FontWeight.bold,
            //       textAlign: TextAlign.center,
            //       FontSize: FontSize.s24),
            // ),
            SizedBox(
              width: Get.width * 0.80,
              child: TextWidget(
                  maxLines: 3,
                  Title: sliderObject!.subtitle,
                  textAlign: TextAlign.center,
                  FontSize: FontSize.s16),
            ),
            Padding(
              padding:  EdgeInsets.only(top: Get.height * 0.041),
              child: Image.asset(
                sliderObject!.image,
                height: Get.height * 0.4,
                width: Get.width,
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(top: PaddingEdit.p34),
              child: SmoothPageIndicator(
                controller: controller.pageController,
                effect: ExpandingDotsEffect(
                    dotColor: ColorManagement.colorGreyLight,
                    activeDotColor: ColorManagement.colorPrimary,
                    expansionFactor: 4,
                    dotHeight: 10,
                    dotWidth: 9,
                    spacing: 10),
                count: controller.list!.length,
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(
                  top: PaddingEdit.p20, bottom: PaddingEdit.p30),
              child: Row(
                children: [
                  // if (controller.currentIndex >= 1) ...[
                  //   InkWell(
                  //     onTap: () {
                  //       controller.pageController.animateToPage(
                  //           controller.getPreviousPage(),
                  //           duration: const Duration(seconds: 1),
                  //           curve: Curves.fastLinearToSlowEaseIn);
                  //     },
                  //     child: TextWidget(
                  //         Title: 'Previous',
                  //         FontWeight: FontWeight.w500,
                  //         FontSize: FontSize.s18,
                  //         textAlign: TextAlign.left),
                  //   ),
                  // ],
                ],
              ),
            )
            // SliderObject(title: AppStrings.onBoardingTitle1, subtitle: AppStrings.onBoardingSubtitle1, image: AssetImage(BaseImage.onBoarding1),),
          ],
        ),
      ),
    );
  }
}
