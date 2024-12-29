import 'package:flutter/material.dart';

abstract class FontSizeConfig {
  static const double desktop = 1200;
  static const double tablet = 800;
  static const double mobile = 350;

  static late double hight, width;
// مايفضلش استخدامها  عند بناء ديسك توب لانه مابيعمل ري بلد مباشرة لازم تعمل حفظ ويفضل يتم استخدمها مباشراة في اي كلاس استيت فل
  static init(BuildContext context) {
    hight = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
  }
}

double getResponsiveFontSize(context, {required double fontSize}) {
  //scale factor == depend on platform
  double scaleFactor = getScaleFactor(context);
  //responsive font size
  double responsiveFontSize = fontSize * scaleFactor;
  //(min,max)font size
  //ضرب في اي قيمة تريدها بمايناسب التصميم حقك
  double lowerLimit = fontSize * 1;
  double upperLimit = fontSize * 1.3;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  //scale factor == depend on platform

//بديل الميديا كويري
//لايفضل استخدامها عند تصميم على الويب لان التحديث مايكون ظاهر مباشر
// var disPatcher=PlatformDispatcher.instance;
// var physicalWidth=disPatcher.views.first.physicalSize.width;
// var devicePixelRiot=disPatcher.views.first.physicalSize.width;
// var width=physicalWidth/devicePixelRiot;

  var width = MediaQuery.sizeOf(context).width;
  if (width < FontSizeConfig.mobile) {
    return width / 450;
  } else if (width < FontSizeConfig.tablet) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
