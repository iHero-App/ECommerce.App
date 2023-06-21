import 'package:ecommerce/Shared/Base/routing.dart';
import 'package:ecommerce/Shared/Resource/string_mangment.dart';
import 'package:ecommerce/Shared/components/botton.dart';
import 'package:ecommerce/Shared/components/text_widget.dart';
import 'package:ecommerce/View/OnBoarding/components/onboarding_view.dart';
import 'package:ecommerce/ViewModel/onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Shared/Resource/color_mangment.dart';
import '../../Shared/Resource/size_mangment.dart';
import '../../Shared/Resource/view_mangment.dart';

class OnBoardingPage extends GetView<OnBoardingController> {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingController>(
        builder: (controller) => Scaffold(
              // appBar: AppBar(
              //   systemOverlayStyle: SystemUiOverlayStyle(
              //     statusBarColor: ColorManagement.colorBlack,
              //     statusBarBrightness: Brightness.dark,
              //   ),
              // ),
              backgroundColor: ColorManagement.colorWhiteDark,
              body: SafeArea(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: PaddingEdit.p38,
                    // right: PaddingEdit.p30,
                    // left: PaddingEdit.p30),
                  ),
                  child: Column(
                    children: [
                      TextWidget(
                        Title: "TOKOTO",
                        colorText: ColorManagement.colorPrimary,
                        FontSize: FontSize.s44,
                        FontWeight: FontWeight.bold,
                      ),
                      // Container(
                      //   width: Get.width,
                      //   padding: EdgeInsets.only(
                      //       top: PaddingEdit.p12, bottom: PaddingEdit.p12),
                      //   color: ColorManagement.colorPrimary,
                      //   child: Padding(
                      //     padding: EdgeInsets.only(
                      //         right: PaddingEdit.p30, left: PaddingEdit.p30),
                      //     child: Row(
                      //       children: [
                      //         // Image.asset(
                      //         //   BaseImage.logo,
                      //         //   width: Get.width * 0.4,
                      //         // ),
                      //         const Spacer(),
                      //         InkWell(
                      //           onTap: () {
                      //             AppStrings.storage.write('ShowOnBoard', true);
                      //             Get.offAndToNamed(PageTo.home);
                      //           },
                      //           child: TextWidget(
                      //               Title: 'Skip',
                      //               colorText: ColorManagement.colorWhiteDark,
                      //               FontWeight: FontWeight.w500,
                      //               FontSize: FontSize.s18,
                      //               textAlign: TextAlign.left),
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                      Expanded(
                        flex: 50,
                        child: PageView.builder(
                          controller: controller.pageController,
                          onPageChanged: (index) {
                            controller.currentIndex = index;
                            controller.update();
                          },
                          itemBuilder: (context, index) {
                            //return onboarding page
                            return OnBoardingView(controller.list![index]);
                          },
                          itemCount: controller.list!.length,
                        ),
                      ),
                      const Spacer(),
                      if (controller.currentIndex >= 0) ...[
                        Padding(
                          padding: EdgeInsets.only(
                              left: PaddingEdit.p20,
                              right: PaddingEdit.p20,
                              bottom: Get.height * 0.05),
                          child: botton(
                              borderRadiusize: 30,
                              paddingbotton: 10,
                              paddingtop: 10,
                              paddingleft: Get.width * 0.32,
                              paddingright: Get.width * 0.32,
                              colorbotton: ColorManagement.colorPrimary,
                              colortext: ColorManagement.colorWhite,
                              title: "Continue",
                              onTap: () {
                                if (controller.isLast) {
                                  AppStrings.storage
                                      .write('ShowOnBoard', true);
                                  Get.offAndToNamed(PageTo.login);
                                } else {
                                  controller.pageController.animateToPage(
                                      controller.getNextPage(),
                                      duration: const Duration(seconds: 1),
                                      curve: Curves.fastLinearToSlowEaseIn);
                                }
                              }),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ));
  }
}
