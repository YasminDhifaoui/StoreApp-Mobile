import 'package:flutter/material.dart';
import '../../constants.dart';

class ColorDort extends StatelessWidget{
  const ColorDort({
    super.key,
    required this.fillColor,
    this.isSelected = false,
  });
  final Color fillColor;
  final bool isSelected;
  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding/2.5),
      padding: const EdgeInsets.all(3.0),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border : Border.all(
          color : isSelected ? kTextLightColor: Colors.transparent ),
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: fillColor,
        ),
      ),
    );
  }
}