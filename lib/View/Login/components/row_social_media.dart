
import 'package:ecommerce/Models/social_media_icon.dart';
import 'package:ecommerce/Shared/Resource/color_mangment.dart';
import 'package:ecommerce/Shared/Resource/size_mangment.dart';
import 'package:ecommerce/Shared/Resource/view_mangment.dart';
import 'package:ecommerce/Shared/components/botton.dart';
import 'package:ecommerce/Shared/components/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

Widget rowSocialMedia (){
  return Padding(
      padding:EdgeInsets.only(top: 15 , right: Get.width * 0.20 , left: Get.width * 0.20  )  ,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: socialmedisicon.
        map(
                (icon) =>
                    CircleAvatar(
                      child: SvgPicture.asset(icon.icon),
                      radius: 20,
                      backgroundColor: ColorManagement.colorGreyLight.withOpacity(0.1),
                    ),
        ).toList()),);
}