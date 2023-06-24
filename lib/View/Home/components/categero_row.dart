import 'package:ecommerce/Models/categore_model_prodect.dart';
import 'package:ecommerce/Shared/Resource/color_mangment.dart';
import 'package:ecommerce/Shared/Resource/view_mangment.dart';
import 'package:ecommerce/Shared/components/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

Widget Gategro_Row(){
  return SingleChildScrollView(
scrollDirection: Axis.horizontal,
    child: Padding(
      padding: EdgeInsets.only(top: PaddingEdit.p14 , left: PaddingEdit.p20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: gategro_list.map((list) =>
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
              padding: EdgeInsets.all(15),
                height: Get.height * 0.075,
                width: Get.height * 0.075,
                decoration: BoxDecoration(
                  color: ColorManagement.colorPrimaryLight,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: SvgPicture.asset(list.icon ),
              ),
            ),
            SizedBox(
              width: Get.width * 0.12,
              child: TextWidget(maxLines: 2 ,Title: list.title , colorText: ColorManagement.colorBlack),
            )
          ],
        )
        ).toList(),
      ),
    ),
  );
}