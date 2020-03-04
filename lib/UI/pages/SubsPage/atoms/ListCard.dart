import 'package:appointment/UI/core/atoms/FancyText.dart';
import 'package:appointment/UI/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ListCard extends StatefulWidget {
  final name;
  final image;
  final caption;
  ListCard({this.image, this.name, this.caption});

  @override
  _ListCardState createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> with TickerProviderStateMixin {
  AnimationController controller;

  String get timerString {
    Duration duration = controller.duration * controller.value;
    return '${(duration.inHours % 60).toString().padLeft(2, '0')}:${(duration.inMinutes % 60).toString().padLeft(2, '0')}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
  }

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 20));
  }

  timer(controller) {
    // if(controller.value == 0.0){
    //   controller.stop();
    // }
    // else{
    controller.reverse(from: controller.value == 0.0 ? 1.0 : controller.value);
    // }
  }

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
              widget.image,
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
                    text: "${widget.name}",
                    size: 18.0,
                    fontWeight: FontWeight.w700,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Row(
                      children: <Widget>[
                        Icon(CupertinoIcons.clock_solid, color: textDark_Yellow.withOpacity(0.9), size: 20.0,),
                        FancyText(
                          defaultStyle: true,
                          text: "10:00 am, ",
                          size: 15.0,
                          opacity: 0.4,
                          fontWeight: FontWeight.w600,
                        ),
                        AnimatedBuilder(
                          animation: controller,
                          builder: (BuildContext context, Widget child) {
                            return FancyText(
                              defaultStyle: true,
                              text: timerString,
                              size: 15.0,
                              opacity: 0.4,
                              fontWeight: FontWeight.w600,
                              onTap: timer(controller),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(CupertinoIcons.location_solid, color: textDark_Yellow, size: 20.0,),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0, left: 2.0),
                        child: FancyText(
                          defaultStyle: true,
                          text:
                              "2601 N San Fernando Rd, \nLos Angeles, CA 90065",
                          size: 14.0,
                          textAlign: TextAlign.start,
                          opacity: 0.6,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
