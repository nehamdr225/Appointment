import 'package:appointment/UI/core/atoms/FancyText.dart';
import 'package:appointment/UI/core/atoms/ImageHolder.dart';
import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  final name;
  final image;
  final caption;
  ListCard({this.image, this.name, this.caption});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(top: 2.0, bottom: 5.0),
      child: Container(
        height: size.height * 0.20,
        width: size.width * 0.90,
        decoration: BoxDecoration(
            color: theme.colorScheme.onBackground,
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: [
              BoxShadow(color: Colors.grey[300], offset: Offset(2, 3)),
              BoxShadow(color: Colors.grey[200], offset: Offset(-1, -1))
            ]),
        child: Row(
          children: <Widget>[
            Image.asset(
              image,
              fit: BoxFit.cover,
              height: size.height * 0.20,
              width: size.width * 0.40,
            ),
            Container(
              padding: EdgeInsets.only(top: 18.0, left: 12.0, right: 2.0),
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FancyText(
                    defaultStyle: true,
                    text: "$name",
                    size: 18.0,
                    fontWeight: FontWeight.w700,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Row(
                      children: <Widget>[
                        FancyText(
                          defaultStyle: true,
                          text: "Time: ",
                          size: 14.0,
                          opacity: 0.4,
                          fontWeight: FontWeight.w500,
                        ),
                        FancyText(
                          defaultStyle: true,
                          text: "10:00 am ",
                          size: 15.0,
                          opacity: 0.4,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: FancyText(
                      defaultStyle: true,
                      text: "Address: ",
                      size: 14.0,
                      opacity: 0.4,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:5.0),
                    child: FancyText(
                      defaultStyle: true,
                      text: "2601 N San Fernando Rd, \nLos Angeles, CA 90065",
                      size: 15.0,
                      textAlign: TextAlign.start,
                      opacity: 0.4,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
