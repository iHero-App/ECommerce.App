// import 'dart:html';

import 'package:ecommerce/Shared/Resource/color_mangment.dart';
import 'package:ecommerce/Shared/Resource/images_mangment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/body.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset : false,
      bottomNavigationBar: Container(

        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
            color: ColorManagement.colorWhite,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {}, icon: SvgPicture.asset(BaseSvg.shopicon)),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(BaseSvg.hearticon)),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(BaseSvg.chatbubbleicon)),
            IconButton(
                onPressed: () {}, icon: SvgPicture.asset(BaseSvg.usericon))
          ],
        ),
      ),
      body: bodyHome(searchController),
    );
  }
}
