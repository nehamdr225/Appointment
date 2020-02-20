import 'package:flutter/material.dart';
import 'package:appointment/state/bloc.dart';

class SearchBar extends StatefulWidget {
  final HomeScreenBloc bloc;
  SearchBar({Key key, @required this.bloc}) : super(key: key);
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  FocusNode _focusNode = FocusNode();
  HomeScreenBloc get _bloc => widget.bloc;
  @override
  Widget build(BuildContext context) {
    //final color = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(top: 0.0),
      child: StreamBuilder<bool>(
        stream: _bloc.searching,
        initialData: false,
        builder: (context, snapshot) {
          final _searching = snapshot.data;
          return AnimatedContainer(
            duration: Duration(milliseconds: 500),
            height:
                60, // searching true then 90, false then 130
            width: double.maxFinite,
            alignment: Alignment.centerLeft,
            curve: Curves.fastOutSlowIn,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryVariant,
                boxShadow: [
                  BoxShadow(
                      color: Theme.of(context)
                          .colorScheme
                          .primaryVariant
                          .withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 20),
                ]),
            child: Stack(
              fit: StackFit.passthrough,
              children: <Widget>[
                AnimatedPadding(
                  curve: Curves.fastOutSlowIn,
                  duration: Duration(milliseconds: 500),
                  padding: _searching
                      ? EdgeInsets.only(top: 10, right: 65)
                      : EdgeInsets.only(top: 10),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    height: 46,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 105),
                          child: Icon(Icons.search, color: Colors.black26),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 55),
                          child: TextFormField(
                            focusNode: _focusNode,
                            onTap: () {
                              _bloc.onSearchOpen();
                            },
                            style: Theme.of(context).textTheme.headline,
                            cursorColor: Colors.white,
                            scrollPadding: EdgeInsets.zero,
                            decoration: InputDecoration.collapsed(
                              hintText: 'Search',
                              hintStyle: Theme.of(context).textTheme.title,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                _searching
                    ? Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(top: 10, left: 20),
                          child: FlatButton(
                            padding: EdgeInsets.zero,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            onPressed: () {
                              _bloc.onSearchClose();
                              _focusNode.unfocus();
                            },
                            child: Text('Cancel',
                                style: Theme.of(context).textTheme.title),
                          ),
                        ),
                      )
                    : Container(
                        height: 0,
                      )
              ],
            ),
          );
        },
      ),
    );
  }
}
