import 'package:appointment/UI/pages/SubsPage/atoms/ListCard.dart';
import 'package:appointment/UI/core/const.dart';
import 'package:appointment/UI/pages/SubsPage/atoms/Tab1ListCard.dart';
import 'package:flutter/material.dart';

class Subscriptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      body: ListView.builder(
          itemCount: NearYou.length,
          itemBuilder: (BuildContext context, int index) {
            return Tab1ListCard(
              name: NearYou[index]['name'],
              caption: NearYou[index]['cap'],
              image: NearYou[index]['src'],
            );
          }),
    );
  }
}
