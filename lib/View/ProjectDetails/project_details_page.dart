import 'package:ecommerce/Shared/Resource/color_mangment.dart';
import 'package:ecommerce/Shared/Resource/images_mangment.dart';
import 'package:ecommerce/Shared/Resource/size_mangment.dart';
import 'package:ecommerce/Shared/Resource/view_mangment.dart';
import 'package:ecommerce/Shared/components/text_widget.dart';
import 'package:ecommerce/View/ProjectDetails/component/color_row.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemDetailsPage extends StatefulWidget {
  ItemDetailsPage({super.key});

  @override
  State<ItemDetailsPage> createState() => _ItemDetailsPageState();
}

class _ItemDetailsPageState extends State<ItemDetailsPage> {
  List<String> listImage = [
    BaseImage.ps4_console_white_1,
    BaseImage.ps4_console_white_2,
    BaseImage.ps4_console_white_3,
    BaseImage.ps4_console_white_4
  ];
  String imageString = BaseImage.ps4_console_white_1;
  void OnchangeImage(String imageS) {
    setState(() {
      imageString = imageS;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Column(
            children: [
              Expanded(
                flex: 7,
                child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: Get.height * 0.45,
                          width: Get.width,
                          decoration: BoxDecoration(
                            color: ColorManagement.colorGreyLight
                                .withOpacity(0.05),
                          ),
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: PaddingEdit.p20),
                              child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      children: [
                                        // InkWell(
                                        //   onTap: () {
                                        //     Get.back();
                                        //   },
                                        //   child: CircleAvatar(
                                        //     radius: 25,
                                        //     backgroundColor: ColorManagement.colorWhite,
                                        //     child: Align(
                                        //         alignment: Alignment.center,
                                        //         child: Icon(
                                        //           Icons.arrow_back_ios_new,
                                        //           color: ColorManagement.colorBlack,
                                        //         )),
                                        //   ),
                                        // ),
                                        Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            // margin: EdgeInsets.only(top: MarginEdit.m8),
                                            height: Get.height * 0.05,
                                            width: Get.width * 0.2,
                                            decoration: BoxDecoration(
                                                color:
                                                    ColorManagement.colorWhite,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                TextWidget(
                                                    Title: '4.8',
                                                    colorText: ColorManagement
                                                        .colorBlack),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 4),
                                                    child: Icon(
                                                      Icons.star,
                                                      color: Colors.amber,
                                                    )),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: PaddingEdit.p20),
                                      height: Get.height * 0.20,
                                      width: Get.width * 0.66,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(imageString == ''
                                              ? BaseImage.ps4_console_white_1
                                              : imageString),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: listImage
                                          .map((image) => Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: InkWell(
                                                  onTap: () {
                                                    OnchangeImage(image);
                                                  },
                                                  child: Container(
                                                    padding: EdgeInsets.all(10),
                                                    height: Get.height * 0.07,
                                                    width: Get.height * .07,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          width: 2,
                                                          color: imageString ==
                                                                  image
                                                              ? Colors.amber
                                                              : ColorManagement
                                                                  .colorWhite),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      color: ColorManagement
                                                          .colorWhite,
                                                    ),
                                                    child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                      image: DecorationImage(
                                                        image:
                                                            AssetImage(image),
                                                        fit: BoxFit.fitWidth,
                                                      ),
                                                    )),
                                                  ),
                                                ),
                                              ))
                                          .toList(),
                                    )
                                  ])),
                        ),
                        Container(
                          color:
                              ColorManagement.colorGreyLight.withOpacity(0.05),
                          child: Container(
                            decoration: BoxDecoration(
                                color: ColorManagement.colorWhite,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40))),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: PaddingEdit.p20,
                                        left: PaddingEdit.p20),
                                    child: SizedBox(
                                        width: Get.width * 0.9,
                                        child: TextWidget(
                                            textAlign: TextAlign.start,
                                            Title:
                                                "Wireless Controller for PS4",
                                            colorText:
                                                ColorManagement.colorBlack,
                                            FontWeight: FontWeight.bold,
                                            FontSize: FontSize.s20)),
                                  ),
                                  Row(
                                    children: [
                                      Spacer(),
                                      Container(
                                        height: Get.height * 0.06,
                                        width: Get.width * 0.15,
                                        decoration: BoxDecoration(
                                            color: Colors.red.withOpacity(0.22),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                bottomLeft:
                                                    Radius.circular(20))),
                                        child: Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: PaddingEdit.p20,
                                        bottom: PaddingEdit.p20),
                                    child: SizedBox(
                                        width: Get.width * 0.747,
                                        child: TextWidget(
                                            maxLines: 3,
                                            textAlign: TextAlign.start,
                                            Title:
                                                "Wireless Controller for PS4 gives you what you want in your gaming from over precision control games to sharing",
                                            colorText:
                                                ColorManagement.colorGreyLight,
                                            FontSize: 15)),
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: PaddingEdit.p8,
                                            left: PaddingEdit.p20),
                                        child: TextWidget(
                                            textAlign: TextAlign.center,
                                            Title: "See More Detail",
                                            colorText:
                                                ColorManagement.colorPrimary,
                                            FontWeight: FontWeight.bold,
                                            FontSize: FontSize.s16),
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            size: 17,
                                            color: ColorManagement.colorPrimary,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: Get.height * 0.04),
                                    child: Container(
                                      height: Get.height * 0.12,
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                          color: ColorManagement.colorGreyLight
                                              .withOpacity(0.05),
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(40),
                                              topRight: Radius.circular(40))),
                                      child: ColorRow(),
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: ColorManagement.colorGreyLight.withOpacity(0.05),
                  child: Container(
                    height: 60,
                    width: Get.width,
                    decoration: BoxDecoration(
                        color: ColorManagement.colorWhite,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: PaddingEdit.p30,
                          left: Get.width * 0.15,
                          right: Get.width * 0.15,
                          bottom: PaddingEdit.p10),
                      child: Container(
                        width: Get.width * 0.7,
                        decoration: BoxDecoration(
                            color: ColorManagement.colorPrimary,
                            borderRadius: BorderRadius.circular(40)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextWidget(
                              Title: "Add To Cart",
                              colorText: ColorManagement.colorWhite,
                              FontSize: FontSize.s20,
                              FontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          onPressed: () => Get.back(),
          child: Icon(
            Icons.arrow_back_ios_new,
            color: ColorManagement.colorBlack,
          ),
          backgroundColor: ColorManagement.colorWhite,
        ),
      ),
      backgroundColor: ColorManagement.colorWhite,
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }
}
