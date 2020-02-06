import 'package:appointment/Widget/atoms/FancyText.dart';
import 'package:flutter/material.dart';

class GridLook extends StatelessWidget {
  // final image;
  // final imgheight;
  // final name;
  // final id;
  // final wishlist;
  // GridLook({this.image, this.imgheight, this.name, this.id, this.wishlist});
  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Container(
        child: InkWell(
          onTap: () {
            // Navigator.of(context).push(MaterialPageRoute(
            //     builder: (context) => ProductDetails(id: id)));
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset(
                'assets/images/bakery.jpg',
                height: 120.0,
                //width: 60.0,
              ),
              Divider(),
              FancyText(
                text: 'Bakery Appointment',
              )
            ],
          ),
        ),
      ),
    );
  }
}
