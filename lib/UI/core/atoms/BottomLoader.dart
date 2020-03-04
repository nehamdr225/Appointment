import 'package:flutter/material.dart';

class BottomLoader extends StatefulWidget {
  @override
  _BottomLoaderState createState() => _BottomLoaderState();
}

class _BottomLoaderState extends State<BottomLoader> {
  String state;
  @override
  Widget build(BuildContext context) {
    //final status = Provider.of<ProductModel>(context).refresh();
    // status.then((data) {
    //   if (data != null)
    //     setState(() {
    //       state = data;
    //     });
    // });
    return Container(
        alignment: Alignment.center,
        child: state == "done" && state != null
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("Nothing more to show!"),
                  Icon(Icons.check, color: Theme.of(context).iconTheme.color,)
                ],
              )
            : CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(
                    Theme.of(context).colorScheme.primaryVariant),
                strokeWidth: 5.0));
  }
}
