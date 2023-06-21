import 'package:ecommerce/Shared/Base/routing.dart';
import 'package:ecommerce/Shared/Resource/color_mangment.dart';
import 'package:ecommerce/Shared/Resource/size_mangment.dart';
import 'package:ecommerce/Shared/Resource/view_mangment.dart';
import 'package:ecommerce/Shared/components/botton.dart';
import 'package:ecommerce/Shared/components/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Login/components/row_social_media.dart';
import 'components/textfield_signup.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManagement.colorWhiteDark,
        leading: InkWell(
            onTap: (){
              Get.back();
            },
            child: Icon(Icons.arrow_back, color: ColorManagement.colorBlack)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: Get.height * 0.035 ),
            child: Center(
              child: TextWidget(
                  Title: "Register Account",
                  colorText: ColorManagement.colorBlack,
                  FontSize: FontSize.s32,
                  FontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: SizedBox(
                height: Get.height * 0.10,
                width: Get.width * 0.7,
                child: TextWidget(
                    maxLines: 2,
                    Title:
                    "Complete your details or continue with social media",
                    colorText: ColorManagement.colorGreyLight,
                    FontSize: FontSize.s16)),
          ),
          textFieldSignUp(emailController , passwordController , confirmPasswordController),
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
                  Get.toNamed(PageTo.completeprofile);
                }),
          ),
          rowSocialMedia(),
          Padding(
            padding: EdgeInsets.only(bottom: Get.width * 0.07 , top: Get.height * 0.02),
            child: SizedBox(
              width: Get.width * 0.88,
                child: TextWidget(Title: "By continuing you confirm that you agree with our Team and Condition" , colorText: ColorManagement.colorGreyLight ,maxLines: 2 , FontSize: FontSize.s14 )),
          )
        ],
      ),    );
  }
}

