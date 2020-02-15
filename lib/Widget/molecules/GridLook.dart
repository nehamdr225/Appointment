import 'package:appointment/core/atoms/FancyText.dart';
import 'package:flutter/material.dart';

class GridLook extends StatelessWidget {
  final src;
  final imgheight;
  final name;
  final caption;
  final wishlist;
  final onTap;
  GridLook(
      {this.src,
      this.imgheight,
      this.name,
      this.caption,
      this.wishlist,
      this.onTap});
  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        // Navigator.of(context).push(MaterialPageRoute(
        //     builder: (context) => ProductDetails(id: id)));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            src,
            height: 110.0,
            //width: 60.0,
          ),
          Divider(),
          FancyText(
            text: name,
          ),
          SizedBox(height: 5,)
        ],
      ),
    );
  }
}
