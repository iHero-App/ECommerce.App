import 'package:ecommerce/Shared/Base/routing.dart';
import 'package:ecommerce/Shared/Resource/color_mangment.dart';
import 'package:ecommerce/Shared/Resource/size_mangment.dart';
import 'package:ecommerce/Shared/Resource/view_mangment.dart';
import 'package:ecommerce/Shared/components/botton.dart';
import 'package:ecommerce/Shared/components/text_widget.dart';
import 'package:ecommerce/View/Login/components/row_forgetandcheck.dart';
import 'package:ecommerce/View/Login/components/row_social_media.dart';
import 'package:ecommerce/View/Login/components/textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'component/textfield_forgot_password.dart';

class ForgotPasswordPage extends StatelessWidget {
  ForgotPasswordPage({super.key});
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: ColorManagement.colorWhiteDark,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back, color: ColorManagement.colorBlack)),
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
                    Title: "Forgot Password",
                    colorText: ColorManagement.colorBlack,
                    FontSize: FontSize.s32,
                    FontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: SizedBox(
                  width: Get.width * 0.78,
                  child: TextWidget(
                      maxLines: 2,
                      Title:
                          "Please enter your email and we will send you a link return to your account",
                      colorText: ColorManagement.colorGreyLight,
                      FontSize: FontSize.s16)),
            ),
            textFieldLForgotPassword(emailController),
            Padding(
              padding: EdgeInsets.only(
                  top: Get.height * 0.1,
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
                  onTap: () {}),
            ),
            Padding(
              padding:
                  EdgeInsets.only(bottom: Get.width * 0.5, top: Get.height * 0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextWidget(
                      Title: "Don't have on account? ",
                      colorText: ColorManagement.colorGreyLight,
                      FontSize: FontSize.s18),
                  InkWell(
                      onTap: () {
                        Get.toNamed(PageTo.signup);
                      },
                      child: TextWidget(
                          Title: "Sign Up",
                          colorText: ColorManagement.colorPrimary,
                          FontSize: FontSize.s20)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
