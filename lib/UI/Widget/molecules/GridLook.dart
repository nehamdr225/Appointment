import 'package:appointment/UI/core/atoms/FancyText.dart';
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
        //crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left:10.0,),
                child: FancyText(
                  text: name,
                ),
              ),
              
            ],
          ),
          Container(
            height: 100,
            width: 150.0,
            
            child:  ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                  src,
                  fit: BoxFit.fill,
                  //height: 110.0,
                  //width: 60.0,
                ),
            ),
            
          ),
          //Divider(),
          
          //SizedBox(height: 5,)
        ],
      ),
    );
  }
}
