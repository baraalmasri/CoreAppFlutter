
import 'package:flutter/material.dart';
//note !!
/*
* color selection chars  `0x` for hexadecimal  `ff` for transparency
* ff =100% soled color
* fc =99 %
* fa = 98 %
* .\
*
* cc= 80%
* example : Color (0xccEdp726) this color will be yallow with 80 % transparency
*/
class ColorManager{
  static Color primary =const Color (0xffED9728);
  static Color lightprimary =const Color (0xccED9728);
  static Color darkGrey =const Color (0xff525252);
  static Color grey =const Color (0xff737477);
  static Color lightGrey =const Color (0xff9E9E9E);//"#9E9E9E" =>  0xff9E9E9E to be acceptable;


// new dark colors
  static Color darkprimary =const Color (0xffd17d11);
  static Color darkGrey1 =const Color (0xff707070);
  static Color grey2 =const Color (0xff797979);
  static Color white =const Color (0xffFFFFFF);
  static Color error =const Color (0xffe61f34);

}