import 'package:appointment/UI/Widget/Subscription/Past.dart';
import 'package:appointment/UI/Widget/Subscription/Subscriptions.dart';
import 'package:appointment/UI/Widget/Subscription/Upcoming.dart';
import 'package:appointment/UI/core/atoms/WhiteAppBar.dart';
import 'package:flutter/material.dart';

class SubsPage extends StatefulWidget {
  @override
  _SubsPageState createState() => _SubsPageState();
}

class _SubsPageState extends State<SubsPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this, initialIndex: 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: WhiteAppBar(
            logo: true,
            settings: false,
            tabbar: true,
            controller: _tabController,
            tabs: <Widget>[
              Tab(
                text: "Subscriptions",
              ),
              Tab(text: "Upcoming"),
              Tab(
                text: "Past",
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Subscriptions(),
            Upcoming(),
            Past(),
          ],
        ));
  }
}
