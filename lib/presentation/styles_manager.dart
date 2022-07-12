import 'package:flutter/material.dart';
import 'package:flutter_advanced_clean_architecture_with_mvvm/presentation/color_manager.dart';

import 'font_manager.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, String fontFamily, Color color){
  return TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
    color: color,
  );
}

//regular style
TextStyle getRegularStyle({double fontSize = FontSize.s12, required Color color}){
  return _getTextStyle(
      fontSize,
      FontWeightManager.regular,
      FontConstants.fontFamily,
      color,
  );
}

//light style
TextStyle getLightStyle({double fontSize = FontSize.s12, required Color color}){
  return _getTextStyle(
    fontSize,
    FontWeightManager.light,
    FontConstants.fontFamily,
    color,
  );
}

//bold style
TextStyle getBoldStyle({double fontSize = FontSize.s12, required Color color}){
  return _getTextStyle(
    fontSize,
    FontWeightManager.bold,
    FontConstants.fontFamily,
    color,
  );
}

//Semi-Bold style
TextStyle getSemiBoldStyle({double fontSize = FontSize.s12, required Color color}){
  return _getTextStyle(
    fontSize,
    FontWeightManager.semiBold,
    FontConstants.fontFamily,
    color,
  );
}

//medium style
TextStyle getMediumStyle({double fontSize = FontSize.s12, required Color color}){
  return _getTextStyle(
    fontSize,
    FontWeightManager.medium,
    FontConstants.fontFamily,
    color,
  );
}


