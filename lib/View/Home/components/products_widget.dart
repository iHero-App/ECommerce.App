import 'package:ecommerce/Models/product_model.dart';
import 'package:ecommerce/Shared/Resource/color_mangment.dart';
import 'package:ecommerce/Shared/Resource/size_mangment.dart';
import 'package:ecommerce/Shared/Resource/view_mangment.dart';
import 'package:ecommerce/Shared/components/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget Product_Widget (){
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Padding(
      padding: EdgeInsets.only(top: PaddingEdit.p14 , left: PaddingEdit.p20),
      child: Row(
        children: Products_list.map((e) =>
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(19),
              height: Get.height * 0.20,
              width: Get.height * 0.20,
              decoration: BoxDecoration(
                color: ColorManagement.colorGrey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Image.asset(e.image),
            ),
          ),
            Padding(
              padding: EdgeInsets.only(top: 5 , left: PaddingEdit.p10),
              child: SizedBox(
                  width: Get.height * 0.20,
                  height: Get.height * 0.07,
                  child: TextWidget( textAlign : TextAlign.start, Title: e.title , maxLines: 2 , FontSize: FontSize.s16 , FontWeight: FontWeight.bold)),
            ),
Padding(
  padding: EdgeInsets.only(top: 5 , left: PaddingEdit.p10),
  child:   SizedBox(
    width: Get.height * 0.20,
    child: Row(children: [

        TextWidget( textAlign : TextAlign.start, Title: '\$' + '${e.price}' , FontSize: FontSize.s20 , FontWeight: FontWeight.bold , colorText: ColorManagement.colorPrimary),
      Spacer(),
      CircleAvatar(
        radius: 15,
        backgroundColor: e.Like == false  ? ColorManagement.colorGreyLight.withOpacity(0.2) : Colors.red.withOpacity(0.2),
        child: Icon( Icons.favorite ,size: 15, color:  e.Like == false  ? ColorManagement.colorGreyLight.withOpacity(0.3) : Colors.red,),
      ),
    ],),
  ),
)
        ],
        )
        ).toList(),
      ),
    ),
  );
}