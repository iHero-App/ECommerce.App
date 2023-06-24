import 'package:ecommerce/Shared/Resource/color_mangment.dart';
import 'package:ecommerce/Shared/Resource/images_mangment.dart';
import 'package:ecommerce/Shared/Resource/size_mangment.dart';
import 'package:ecommerce/Shared/Resource/view_mangment.dart';
import 'package:ecommerce/Shared/components/text_widget.dart';
import 'package:ecommerce/Shared/components/textfeild_add.dart';
import 'package:ecommerce/View/Home/components/products_widget.dart';
import 'package:ecommerce/View/Home/components/special_cart_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'categero_row.dart';

Widget bodyHome(TextEditingController controllerserch) {
  return SafeArea(
    child: Column(
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding:
                EdgeInsets.only(right: PaddingEdit.p12, left: PaddingEdit.p12),
            child: Container(
              color: ColorManagement.colorWhite,
              width: Get.width,
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      // color: ColorManagement.colorSecondary,
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 19.5,
                            left: PaddingEdit.p10,
                            bottom: 19.5,
                            right: 5),
                        child: TextFormField(
                          controller: controllerserch,
                          textCapitalization: TextCapitalization.words,
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0.0,
                                  color: ColorManagement.colorGrey
                                      .withOpacity(0.6)),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            prefixIcon: Icon(Icons.search),
                            hintTextDirection: TextDirection.ltr,
                            hintText: 'Search product',
                            hintStyle:
                                TextStyle(color: ColorManagement.colorBlack),
                            border: InputBorder.none,
                            fillColor:
                                ColorManagement.colorGrey.withOpacity(0.5),
                            filled: true,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor:
                            ColorManagement.colorGrey.withOpacity(0.5),
                        child: SvgPicture.asset(
                          BaseSvg.carticon,
                          height: 20,
                          width: 20,
                          color: ColorManagement.colorBlack,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor:
                            ColorManagement.colorGrey.withOpacity(0.5),
                        child: SvgPicture.asset(
                          BaseSvg.bellicon,
                          height: 20,
                          width: 20,
                          color: ColorManagement.colorBlack,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 7,
          child: Container(
            color: ColorManagement.colorWhite,
            width: Get.width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      width: Get.width,
                      height: Get.height * 0.12,
                      decoration: BoxDecoration(
                          color: ColorManagement.colorbluedark,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: TextWidget(
                                  Title: "A Summer Surpise",
                                  colorText: ColorManagement.colorWhite),
                            ),
                            TextWidget(
                                Title: "Cashback 20%",
                                FontSize: FontSize.s28,
                                colorText: ColorManagement.colorWhite,
                                FontWeight: FontWeight.bold),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Gategro_Row(),
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: Row(
                      children: [
                        TextWidget(
                            Title: "Special For You",
                            FontWeight: FontWeight.bold,
                            FontSize: FontSize.s20),
                        Spacer(),
                        TextWidget(
                            Title: "See More",
                            colorText: ColorManagement.colorGreyLight),
                      ],
                    ),
                  ),
                  special_cart(),
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: Row(
                      children: [
                        TextWidget(
                            Title: "Popular Products",
                            FontWeight: FontWeight.bold,
                            FontSize: FontSize.s20),
                        Spacer(),
                        TextWidget(
                            Title: "See More",
                            colorText: ColorManagement.colorGreyLight),
                      ],
                    ),
                  ),
                  Product_Widget(),
                ],
              ),
            ),
          ),
        ),
        // SizedBox(
        //   height: Get.height * 0.000,
        // )
      ],
    ),
  );
}
