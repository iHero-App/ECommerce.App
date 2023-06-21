// ignore_for_file: library_private_types_in_public_api

library easy_splash_screen;

import 'dart:async';
import 'dart:core';

import 'package:ecommerce/Shared/Resource/view_mangment.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class EasySplashScreen extends StatefulWidget {
  /// App title, shown in the middle of screen in case of no image available
  final Text? title;

  /// Page background color
  final Color backgroundColor;

  ///  Background image for the entire screen
  final ImageProvider? backgroundImage;

  /// logo width as in radius
  final double logoWidth;

  /// Main image mainly used for logos and like that
  final Image logo;

  /// Loader color
  final Color loaderColor;

  /// Loading text
  final Text loadingText;

  /// Padding for long Loading text, default: EdgeInsets.all(0)
  final EdgeInsets loadingTextPadding;

  /// Background gradient for the entire screen
  final Gradient? gradientBackground;

  /// Whether to display a loader or not
  final bool showLoader;

  /// durationInSeconds to navigate after for time based navigation
  final int durationInSeconds;

  /// The page where you want to navigate if you have chosen time based navigation
  /// String or Widget
  final dynamic navigator;

  /// expects a function that returns a future, when this future is returned it will navigate
  /// Future<String> or Future<Widget>
  /// If both futureNavigator and navigator are provided, futureNavigator will take priority
  final Future<Object>? futureNavigator;

  const EasySplashScreen({
    super.key,
    this.loaderColor = Colors.black,
    this.futureNavigator,
    this.navigator,
    this.durationInSeconds = 3,
    required this.logo,
    this.logoWidth = 50,
    this.title,
    this.backgroundColor = Colors.white,
    this.loadingText = const Text(''),
    this.loadingTextPadding = const EdgeInsets.only(top: 10.0),
    this.backgroundImage,
    this.gradientBackground,
    this.showLoader = true,
  });

  @override
  _EasySplashScreenState createState() => _EasySplashScreenState();
}

class _EasySplashScreenState extends State<EasySplashScreen> {
  @override
  void initState() {
    super.initState();
    if (widget.futureNavigator == null) {
      Timer(Duration(seconds: widget.durationInSeconds), () {
        if (widget.navigator is String) {
          Get.offAndToNamed(widget.navigator);
          // Navigator.of(context).pushReplacementNamed(
          //   widget.navigator as String,
          // );
        } else if (widget.navigator is Widget) {
          Get.offAndToNamed(widget.navigator);
          // Navigator.of(context).pushReplacement(MaterialPageRoute(
          //     builder: (context) => widget.navigator as Widget));
        }
      });
    } else {
      widget.futureNavigator!.then((route) {
        if (route is String) {
          Navigator.of(context).pushReplacementNamed(route);
        } else if (route is Widget) {
          Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (context) => route));
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: widget.backgroundImage != null
                  ? DecorationImage(
                      fit: BoxFit.cover,
                      image: widget.backgroundImage!,
                    )
                  : null,
              gradient: widget.gradientBackground,
              color: widget.backgroundColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: Get.height * 0.10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: widget.logoWidth,
                          child: widget.logo,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 25.0),
                        ),
                        if (widget.title != null) widget.title!
                      ],
                    ),
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.only(bottom: Get.height / 8),
                //   child: Center(
                //     child: LoadingAnimationWidget.horizontalRotatingDots(
                //       color: widget.loaderColor,
                //       size: 35,
                //     ),
                //   ),
                // ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.only(bottom: PaddingEdit.p10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        widget.showLoader
                            ? Center(
                                child: LoadingAnimationWidget.fourRotatingDots(
                                  color: widget.loaderColor,
                                  size: 35,
                                ),
                              )
                            : Container(),
                        if (widget.loadingText.data!.isNotEmpty)
                          const Padding(
                            padding: EdgeInsets.only(top: 20.0),
                          ),
                        Padding(
                          padding: widget.loadingTextPadding,
                          child: widget.loadingText,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
