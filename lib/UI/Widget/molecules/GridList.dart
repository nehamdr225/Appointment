import 'package:appointment/UI/Widget/molecules/GridLook.dart';
import 'package:flutter/material.dart';

class GridList extends StatelessWidget {
  GridList({
    this.listViews,
    this.crossAxisCount,
  });
  final listViews;
  final crossAxisCount;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      primary: false,
      //physics: new NeverScrollableScrollPhysics(),
      itemCount: listViews.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount),
      itemBuilder: (BuildContext context, int index) {
        return Card(
          elevation: 0.0,
          color: Theme.of(context).colorScheme.onBackground,
          borderOnForeground: true,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: GridLook(
            name: listViews[index]['name'],
            caption: listViews[index]['cap'],
            src: listViews[index]['src'],
            onTap: () {
              // Navigator.of(context).push(
              //       MaterialPageRoute(
              //         builder: (context) => CategoryPage(
              //             text: listViews[index]['name'], type: type),
              //       ),
            },
          ),
        );
      },
    );
  }
}
