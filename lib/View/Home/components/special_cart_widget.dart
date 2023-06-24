import 'package:ecommerce/Models/special_cart_model.dart';
import 'package:ecommerce/Shared/Resource/color_mangment.dart';
import 'package:ecommerce/Shared/Resource/size_mangment.dart';
import 'package:ecommerce/Shared/Resource/view_mangment.dart';
import 'package:ecommerce/Shared/components/text_widget.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

Widget special_cart (){
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
        children: special_cart_list.map((list) => Padding(
          padding: EdgeInsets.only(left: PaddingEdit.p20 , top: PaddingEdit.p18),
          child: Container(
      height: Get.height * 0.13,
      width: Get.width * 0.7,
padding: EdgeInsets.only(top: 10 , left: 20),
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(20),
            color: ColorManagement.colorBlack,
            image: DecorationImage(
              opacity: 0.4,
              image: AssetImage(list.image),
              fit: BoxFit.cover,
            ),
        ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: TextWidget(Title: list.title , colorText: ColorManagement.colorWhite , FontSize: FontSize.s18 , FontWeight: FontWeight.bold),
                ),
                TextWidget(Title: '${list.QBrands} Brands',FontSize: FontSize.s12 ,  colorText: ColorManagement.colorWhite ),
              ],
            ),
    ),
        )).toList()),
  );
}