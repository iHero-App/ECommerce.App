import 'package:ecommerce/Shared/Resource/color_mangment.dart';
import 'package:ecommerce/Shared/Resource/images_mangment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

Widget textFieldCompleteProfile(
  TextEditingController controllerfistname,
    TextEditingController controllerlastname,
    TextEditingController controllerphone,
    TextEditingController controlleraddress,
    ) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(top: Get.height * 0.02 , right: 20 , left: 20   ),
        child: TextField(
          controller: controllerfistname,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 1,
                    color: ColorManagement.colorGreyLight), //<-- SEE HERE
                borderRadius: BorderRadius.circular(50.0),
              ),
              suffixIconConstraints:
                  BoxConstraints(minHeight: 24, minWidth: 24),
              prefixIcon: Icon(
                Icons.add,
                color: ColorManagement.colorWhite,
              ),
              suffixIcon: Container(
                padding: EdgeInsets.only(right: 30),
                constraints: BoxConstraints(
                  maxHeight: 55.0,
                  maxWidth: 55.0,
                ),
                child: SvgPicture.asset(
                  BaseSvg.iconProfile,
                  height: 40,
                  width: 40,
                ),
              ),
              border: OutlineInputBorder(),
              labelText: 'First Name',
              hintText: 'Enter your First Name',
              hintStyle: TextStyle(fontWeight: FontWeight.normal),
              contentPadding: EdgeInsets.all(25),
              floatingLabelBehavior: FloatingLabelBehavior.always),
          onChanged: (text) {
            print(text);
          },
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: Get.height * 0.04 , right: 20 , left: 20  ),
        child: TextField(
          controller: controllerlastname,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 1,
                    color: ColorManagement.colorGreyLight), //<-- SEE HERE
                borderRadius: BorderRadius.circular(50.0),
              ),
              suffixIconConstraints:
              BoxConstraints(minHeight: 24, minWidth: 24),
              prefixIcon: Icon(
                Icons.add,
                color: ColorManagement.colorWhite,
              ),
              suffixIcon: Container(
                padding: EdgeInsets.only(right: 30),
                constraints: BoxConstraints(
                  maxHeight: 55.0,
                  maxWidth: 55.0,
                ),
                child: SvgPicture.asset(
                  BaseSvg.iconProfile,
                  height: 35,
                  width: 35,
                ),
              ),
              border: OutlineInputBorder(),
              labelText: 'Last Name',
              hintText: 'Enter your Last Name',
              hintStyle: TextStyle(fontWeight: FontWeight.normal),
              contentPadding: EdgeInsets.all(25),
              floatingLabelBehavior: FloatingLabelBehavior.always),
          onChanged: (text) {
            print(text);
          },
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: Get.height * 0.04 , right: 20 , left: 20  ),
        child: TextField(
          controller: controllerphone,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 1,
                    color: ColorManagement.colorGreyLight), //<-- SEE HERE
                borderRadius: BorderRadius.circular(50.0),
              ),
              suffixIconConstraints:
              BoxConstraints(minHeight: 24, minWidth: 24),
              prefixIcon: Icon(
                Icons.add,
                color: ColorManagement.colorWhite,
              ),
              suffixIcon: Container(
                padding: EdgeInsets.only(right: 30),
                constraints: BoxConstraints(
                  maxHeight: 45.0,
                  maxWidth: 45.0,
                ),
                child: SvgPicture.asset(
                  BaseSvg.iconphone,
                  height: 35,
                  width: 35,
                ),
              ),
              border: OutlineInputBorder(),
              labelText: 'Phone Number',
              hintText: 'Re-enter your Phone Number',
              hintStyle: TextStyle(fontWeight: FontWeight.normal),
              contentPadding: EdgeInsets.all(25),
              floatingLabelBehavior: FloatingLabelBehavior.always),
          onChanged: (text) {
            print(text);
          },
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: Get.height * 0.04 , right: 20 , left: 20  ),
        child: TextField(
          controller: controllerphone,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 1,
                    color: ColorManagement.colorGreyLight), //<-- SEE HERE
                borderRadius: BorderRadius.circular(50.0),
              ),
              suffixIconConstraints:
              BoxConstraints(minHeight: 24, minWidth: 24),
              prefixIcon: Icon(
                Icons.add,
                color: ColorManagement.colorWhite,
              ),
              suffixIcon: Container(
                padding: EdgeInsets.only(right: 30),
                constraints: BoxConstraints(
                  maxHeight: 45.0,
                  maxWidth: 45.0,
                ),
                child: SvgPicture.asset(
                  BaseSvg.iconaddress,
                  height: 35,
                  width: 35,
                ),
              ),
              border: OutlineInputBorder(),
              labelText: 'Address',
              hintText: 'Re-enter your Address',
              hintStyle: TextStyle(fontWeight: FontWeight.normal),
              contentPadding: EdgeInsets.all(25),
              floatingLabelBehavior: FloatingLabelBehavior.always),
          onChanged: (text) {
            print(text);
          },
        ),
      ),
    ],
  );
}
