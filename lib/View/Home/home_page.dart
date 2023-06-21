// import 'dart:html';

import 'package:ecommerce/Shared/Resource/color_mangment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
            color: ColorManagement.colorGrey,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {}, icon: SvgPicture.asset("icons/ShopIcon.svg")),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("icons/HeartIcon.svg")),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("icons/ChatbubbleIcon.svg")),
            IconButton(
                onPressed: () {}, icon: SvgPicture.asset("icons/User.svg"))
          ],
        ),
      ),
    );
  }
}
