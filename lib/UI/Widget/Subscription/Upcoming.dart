import 'package:appointment/UI/core/atoms/ListCard.dart';
import 'package:appointment/UI/core/const.dart';
import 'package:flutter/material.dart';

class Upcoming extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: SizedBox(height:75.0, ),
      backgroundColor: theme.colorScheme.background,
      body: ListView.builder(
        itemCount: NearYou.length,
        itemBuilder: (BuildContext context, int index) {
          return ListCard(
            name: NearYou[index]['name'],
            caption: NearYou[index]['cap'],
            image: NearYou[index]['src'],
          );
        }
      ),
      
    );
  }
}