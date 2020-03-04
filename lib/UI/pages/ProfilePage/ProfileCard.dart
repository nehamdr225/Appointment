import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final widgets;
  ProfileCard({this.widgets});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 8.0),
      child: Container(
        width: size.width * 0.90,
        decoration: BoxDecoration(
            color: theme.colorScheme.onBackground,
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: [
              BoxShadow(color: Colors.grey[300], offset: Offset(2, 3)),
              BoxShadow(color: Colors.grey[200], offset: Offset(-1, -1))
            ]),
        child: Column(
          children: widgets,
        ),
      ),
    );
  }
}
