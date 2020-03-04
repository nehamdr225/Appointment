//import 'package:appointment/UI/core/atoms/centerText.dart';
import 'package:flutter/material.dart';

class ImageHolder extends StatelessWidget {
  final image;
  final imgheight;
  ImageHolder({this.image, this.imgheight});
  @override
  Widget build(BuildContext context) {
    //final imagesrc = "https://api.shop2more.com" + image;
    return Container(
      height: imgheight,
      // child: image != null
      //     ? Image.network(imagesrc)
      //     : CenterText(
      //         text: "Image load failed",
      //         size: 12,
      //       ),
    );
  }
}
