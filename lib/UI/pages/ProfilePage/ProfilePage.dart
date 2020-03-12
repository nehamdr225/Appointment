import 'package:appointment/UI/pages/ProfilePage/ProfileCard.dart';
import 'package:appointment/UI/core/atoms/RaisedButtons.dart';
import 'package:appointment/UI/core/atoms/WhiteAppBar.dart';
import 'package:appointment/state/state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final textStyle = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: WhiteAppBar(
          logo: true,
          settings: true,
          color: textDark_Yellow,
        ),
      ),
      backgroundColor: color.background,
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 5.0,
          ),
          CircleAvatar(
            //profile picture
            backgroundColor: Colors.grey[500],
            radius: 40.0,
            child: CircleAvatar(
              radius: 37.0,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage("assets/images/bakery.jpg"),
            ),
          ),
          Padding(
            //Name
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Neha Manandhar',
              style: textStyle.body1.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 22.0,
                  color: textStyle.body1.color.withOpacity(0.7)),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            // your current balance card
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Container(
              height: 80.0,
              decoration: BoxDecoration(
                color: color.primaryVariant,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "20.0 USD",
                    style: textStyle.body2
                        .copyWith(fontSize: 21.0, fontWeight: FontWeight.w900),
                  ),
                  Text(
                    "Your Current Credit",
                    style:
                        textStyle.body2.copyWith(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 8.0),
            child: Text(
              "This month",
              style: textStyle.body1.copyWith(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                  color: textStyle.body1.color.withOpacity(0.4)),
            ),
          ),
          Padding(
            //this month
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 60.0,
                  width: size.width * 0.43,
                  decoration: BoxDecoration(
                      color: color.onBackground,
                      borderRadius: BorderRadius.circular(5.0),
                      boxShadow: [
                        BoxShadow(
                            color: Theme.of(context)
                                .colorScheme
                                .onBackground
                                .withOpacity(0.5),
                            offset: Offset(2, 3)),
                        BoxShadow(
                            color: Theme.of(context)
                                .colorScheme
                                .onBackground
                                .withOpacity(0.4),
                            offset: Offset(-1, -1))
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "20.0 USD",
                        style: textStyle.body1.copyWith(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w900,
                            color: textStyle.body1.color.withOpacity(0.7)),
                      ),
                      Text(
                        "Your Refunds",
                        style: textStyle.body1.copyWith(
                            fontWeight: FontWeight.w400,
                            color: textStyle.body1.color.withOpacity(0.7)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  height: 60.0,
                  width: size.width * 0.43,
                  decoration: BoxDecoration(
                      color: color.onBackground,
                      borderRadius: BorderRadius.circular(5.0),
                      boxShadow: [
                        BoxShadow(
                            color: Theme.of(context)
                                .colorScheme
                                .onBackground
                                .withOpacity(0.5),
                            offset: Offset(2, 3)),
                        BoxShadow(
                            color: Theme.of(context)
                                .colorScheme
                                .onBackground
                                .withOpacity(0.4),
                            offset: Offset(-1, -1))
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "20.0 USD",
                        style: textStyle.body1.copyWith(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w900,
                            color: textStyle.body1.color.withOpacity(0.7)),
                      ),
                      Text(
                        "Your Sendings",
                        style: textStyle.body1.copyWith(
                            fontWeight: FontWeight.w400,
                            color: textStyle.body1.color.withOpacity(0.7)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
            child: Text(
              "GENERAL",
              style: textStyle.body1.copyWith(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                  color: textStyle.body1.color.withOpacity(0.6)),
            ),
          ),
          ProfileCard(
            //General options
            widgets: [
              FRaisedButton(
                elevation: 0.5,
                height: 50.0,
                color: Theme.of(context).textTheme.body1.color.withOpacity(0.7),
                bgcolor: Theme.of(context).colorScheme.onBackground,
                needIcon: true,
                shape: true,
                radius: 5.0,
                leadingIcon: Image.asset(
                  "assets/icons/profile.png",
                  color: Theme.of(context).colorScheme.primary,
                  height: 24.0,
                ),
                trailingIcon: Icon(
                  CupertinoIcons.forward,
                  color: Theme.of(context).iconTheme.color.withOpacity(0.6),
                ),
                text: "Personal Details",
                onPressed: () {},
              ),
              FRaisedButton(
                elevation: 0.5,
                height: 50.0,
                shape: true,
                radius: 5.0,
                color: Theme.of(context).textTheme.body1.color.withOpacity(0.7),
                bgcolor: Theme.of(context).colorScheme.onBackground,
                needIcon: true,
                leadingIcon: Image.asset(
                  "assets/icons/account.png",
                  color: Theme.of(context).colorScheme.primary,
                  height: 24.0,
                ),
                trailingIcon: Icon(
                  CupertinoIcons.forward,
                  color: Theme.of(context).iconTheme.color.withOpacity(0.6),
                ),
                text: "Account Details",
                onPressed: () {},
              ),
              FRaisedButton(
                elevation: 0.5,
                height: 50.0,
                shape: true,
                radius: 5.0,
                color: Theme.of(context).textTheme.body1.color.withOpacity(0.7),
                bgcolor: Theme.of(context).colorScheme.onBackground,
                needIcon: true,
                leadingIcon: Image.asset(
                  "assets/icons/credit.png",
                  color: Theme.of(context).colorScheme.primary,
                  height: 24.0,
                ),
                trailingIcon: Icon(
                  CupertinoIcons.forward,
                  color: Theme.of(context).iconTheme.color.withOpacity(0.6),
                ),
                text: "Add Credit",
                onPressed: () {},
              ),
            ],
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
            child: Text(
              "OTHERS",
              style: textStyle.body1.copyWith(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                  color: textDark.withOpacity(0.6)),
            ),
          ),
          ProfileCard(
            widgets: [
              FRaisedButton(
                elevation: 0.5,
                height: 50.0,
                color: Theme.of(context).textTheme.body1.color.withOpacity(0.7),
                bgcolor: Theme.of(context).colorScheme.onBackground,
                needIcon: true,
                shape: true,
                radius: 5.0,
                leadingIcon: Icon(
                  Icons.lock,
                  color: Theme.of(context).colorScheme.primary,
                ),
                trailingIcon: Icon(
                  CupertinoIcons.forward,
                  color: Theme.of(context).iconTheme.color.withOpacity(0.6),
                ),
                text: "Password",
                onPressed: () {},
              ),
              FRaisedButton(
                elevation: 0.5,
                height: 50.0,
                shape: true,
                radius: 5.0,
                color: Theme.of(context).textTheme.body1.color.withOpacity(0.7),
                bgcolor: Theme.of(context).colorScheme.onBackground,
                needIcon: true,
                leadingIcon: Icon(
                  CupertinoIcons.bell_solid,
                  color: Theme.of(context).colorScheme.primary,
                ),
                trailingIcon: Icon(
                  CupertinoIcons.forward,
                  color: Theme.of(context).iconTheme.color.withOpacity(0.6),
                ),
                text: "Notifications",
                onPressed: () {},
              ),
              FRaisedButton(
                elevation: 0.5,
                height: 50.0,
                shape: true,
                radius: 5.0,
                color: Theme.of(context).textTheme.body1.color.withOpacity(0.7),
                bgcolor: Theme.of(context).colorScheme.onBackground,
                needIcon: true,
                leadingIcon: Image.asset(
                  "assets/icons/about.png",
                  color: Theme.of(context).colorScheme.primary,
                  height: 24.0,
                ),
                trailingIcon: Icon(
                  CupertinoIcons.forward,
                  color: Theme.of(context).iconTheme.color.withOpacity(0.6),
                ),
                text: "About",
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(
            height: 80.0,
          )
        ],
      ),
    );
  }
}
