// ignore_for_file: must_be_immutable

import 'package:ecommerce/Shared/Base/routing.dart';
import 'package:ecommerce/Shared/Resource/color_mangment.dart';
import 'package:ecommerce/Shared/Resource/size_mangment.dart';
import 'package:ecommerce/Shared/Resource/view_mangment.dart';
import 'package:ecommerce/Shared/components/botton.dart';
import 'package:ecommerce/Shared/components/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'components/row_forgetandcheck.dart';
import 'components/row_social_media.dart';
import 'components/textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: ColorManagement.colorWhiteDark,
        leading: Icon(Icons.arrow_back, color: ColorManagement.colorBlack),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: Get.height * 0.035),
              child: Center(
                child: TextWidget(
                    Title: "Welcome Back",
                    colorText: ColorManagement.colorBlack,
                    FontSize: FontSize.s32,
                    FontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: SizedBox(
                  height: Get.height * 0.10,
                  width: Get.width * 0.9 ,
                  child: TextWidget(
                      maxLines: 2,
                      Title:
                          "Sign in with your email and password or continue with social media",
                      colorText: ColorManagement.colorGreyLight,
                      FontSize: FontSize.s16)),
            ),
            textFieldLogin(emailController, passwordController),
            rowForgetAndCheck(),
            Padding(
              padding: EdgeInsets.only(
                  top: PaddingEdit.p28,
                  left: PaddingEdit.p20,
                  right: PaddingEdit.p20,
                  bottom: PaddingEdit.p20),
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
                    Get.toNamed(PageTo.home);
                  }),
            ),
            rowSocialMedia(),
            Padding(
              padding: EdgeInsets.only(top: PaddingEdit.p24, bottom: Get.width * 0.07),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextWidget(
                      Title: "Don't have on account? ",
                      colorText: ColorManagement.colorGreyLight,
                      FontSize: FontSize.s16),
                  InkWell(
                      onTap: () {
                        Get.toNamed(PageTo.signup);
                      },
                      child: TextWidget(
                          Title: "Sign Up",
                          colorText: ColorManagement.colorPrimary,
                          FontSize: FontSize.s16)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
