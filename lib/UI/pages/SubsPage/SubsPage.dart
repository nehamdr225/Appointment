import 'package:appointment/UI/pages/SubsPage/Subscription/Past.dart';
import 'package:appointment/UI/pages/SubsPage/Subscription/Subscriptions.dart';
import 'package:appointment/UI/pages/SubsPage/Subscription/Upcoming.dart';
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
    final theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: Container(height:75.0, color: theme.canvasColor,),
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
