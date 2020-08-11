import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ListItem {
  final WidgetBuilder bodyBuilder;
  final title;
  final String subtitle;
  bool isExpandedInitially;

  ListItem({
    @required this.bodyBuilder,
    this.title = '',
    this.subtitle = "",
    this.isExpandedInitially = false,
  })  : assert(title != null),
        assert(bodyBuilder != null);

  ExpansionPanelHeaderBuilder get headerBuilder =>
      (context, isExpanded) => new Row(children: [
            Padding(
              padding: EdgeInsets.only(left: 15.0),
            ),
            // new SizedBox(
            //     width: 60.0,
            //     child: Padding(padding: EdgeInsets.all(8.0),
            //       child: title,
            //     )), // new Image.asset(title, height: 20.0, width: 20.0, color: Colors.black87,)),
            new Text(
              subtitle,
              style: Theme.of(context).textTheme.body1,
            )
          ]);
}

class EPanel extends StatefulWidget {
  final List<ListItem> items;

  EPanel(this.items) {
    assert(new Set.from(items.map((li) => li.subtitle)).length == items.length);
  }

  @override
  State<StatefulWidget> createState() => new EPanelState();
}

class EPanelState extends State<EPanel> {
  Map<String, bool> expandedByTitle = new Map();

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      // bodyColor: Theme.of(context).colorScheme.onBackground,
      // shadowColor: Theme.of(context).colorScheme.onBackground,
      // iconColor: Theme.of(context).iconTheme.color,
      children: widget.items
          .map(
            (item) => new ExpansionPanel(
                headerBuilder: item.headerBuilder,
                canTapOnHeader: true,
                body: new Builder(builder: item.bodyBuilder),
                isExpanded:
                    expandedByTitle[item.subtitle] ?? item.isExpandedInitially),
          )
          .toList(growable: false),
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          expandedByTitle[widget.items[index].subtitle] = !isExpanded;
        });
      },
    );
  }
}
