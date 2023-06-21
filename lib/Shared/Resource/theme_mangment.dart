import 'package:ecommerce/Shared/Resource/color_mangment.dart';
import 'package:flutter/material.dart';

ThemeData applicationTheme(BuildContext context) => ThemeData(
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
      ),
      fontFamily: 'Muli',
      canvasColor: ColorManagement.colorWhiteDark,
      unselectedWidgetColor: ColorManagement.colorGreyLight,
      appBarTheme: AppBarTheme(
        backgroundColor: ColorManagement.colorPrimaryLight,
        iconTheme: IconThemeData(
          color: ColorManagement.colorPrimary,
        ),
        titleTextStyle: TextStyle(
          fontFamily: 'Muli',
          color: ColorManagement.colorPrimary,
        ),
        centerTitle: true,
        elevation: 0,
      ),
    );
