import 'package:ecommerce/Shared/Resource/color_mangment.dart';
import 'package:ecommerce/Shared/Resource/images_mangment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

Widget textFieldLogin(
  TextEditingController controlleremail,
    TextEditingController controllerpassword,
) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(top: Get.height * 0.05 , right: 20 , left: 20   ),
        child: TextField(
          controller: controlleremail,
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
                color: ColorManagement.colorTrans,
              ),
              suffixIcon: Container(
                padding: EdgeInsets.only(right: 30),
                constraints: BoxConstraints(
                  maxHeight: 60.0,
                  maxWidth: 60.0,
                ),
                child: SvgPicture.asset(
                  BaseSvg.iconEmail,
                  height: 40,
                  width: 40,
                ),
              ),
              border: OutlineInputBorder(),
              labelText: 'Email',
              hintText: 'Enter your Email',
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
          controller: controllerpassword,
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
                color: ColorManagement.colorTrans,
              ),
              suffixIcon: Container(
                padding: EdgeInsets.only(right: 30),
                constraints: BoxConstraints(
                  maxHeight: 50.0,
                  maxWidth: 50.0,
                ),
                child: SvgPicture.asset(
                  BaseSvg.iconlock,
                  height: 35,
                  width: 35,
                ),
              ),
              border: OutlineInputBorder(),
              labelText: 'Password',
              hintText: 'Enter your password',
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
