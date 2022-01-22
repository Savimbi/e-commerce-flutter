import 'package:flutter/material.dart';

class SizeConfig{
  static late MediaQueryData _mediaQueryData;
  static double screenWidth=0.0;
  static double screenHeight=0.0;
  static double defaultSize=0.0;
  static late Orientation orientation;


  void init(BuildContext context){
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData.size.height;
    screenWidth = _mediaQueryData.size.width;
    orientation = _mediaQueryData.orientation;
  }
}

//Get proportionate height as per screen size
double getProportionalScreenHeight(double inputHeight){
  double screenHeight = SizeConfig.screenHeight;
  return (inputHeight / 812.0) * screenHeight; //812 is the layout that designer uses
}

//Get proportionate width as per screen size
double getProportionateScreenWithd(double inputWidth){
  double screenWidth = SizeConfig.screenWidth;
  return (screenWidth / 375.0) * screenWidth;
}