import 'package:ecommerce/Shared/Base/routing.dart';
import 'package:ecommerce/Shared/Resource/color_mangment.dart';
import 'package:ecommerce/Shared/Resource/size_mangment.dart';
import 'package:ecommerce/Shared/components/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget rowForgetAndCheck (){
  return Padding(
      padding:const EdgeInsets.only(top: 15 , right: 20 , left: 25  )  ,
  child: Row(
    children: [
    Checkbox(
      value: false,
      onChanged: (bool? value) {
      },
    ),
    TextWidget(Title: "Remember me" , colorText: ColorManagement.colorGreyLight ,FontSize: FontSize.s14 ),
    const Spacer(),
    InkWell(
        onTap: (){
          Get.toNamed(PageTo.forgotPassword);
        },
        child: TextWidget(Title: "Forgot Password" , FontSize: FontSize.s16  , TextDecorationEdit: TextDecoration.underline , colorText: ColorManagement.colorGreyLight )),

    ],));
}