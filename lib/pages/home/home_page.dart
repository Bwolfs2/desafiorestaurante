import 'package:desafio_restaurante/models/prato.dart';
import 'package:desafio_restaurante/pages/home/tabs/tab_01.dart';
import 'package:desafio_restaurante/pages/home/widgets/card_prato_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  ThemeBar theme = ThemeBar(
      selectionColor: Color(0xff010509),
      unSelectionColor: Color(0xff254260),
      backgroundColor: Color(0xff061222));

  var tabs = [
    Tab(
      text: "Recipes",
      icon: new Icon(Icons.restaurant_menu),
    ),
    Tab(
      text: "Cook",
      icon: new Icon(FontAwesomeIcons.skullCrossbones),
    ),
    Tab(
      icon: new Icon(FontAwesomeIcons.shoppingCart),
      text: "Shopping",
    ),
    Tab(
      icon: new Icon(FontAwesomeIcons.dungeon),
      text: "My recipes",
    )
  ];

  TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(vsync: this, length: tabs.length);
    _tabController.addListener(() {
      print(_tabController.index);
      switch (_tabController.index) {
        case 0:
          setState(() {
            theme = ThemeBar(
                selectionColor: Color(0xffF2BC04),
                unSelectionColor: Color(0xff254260),
                backgroundColor: Color(0xff061222));
          });
          break;
        case 1:
          setState(() {
            theme = ThemeBar(
                selectionColor: Color(0xff774524),
                unSelectionColor: Color(0xff254260),
                backgroundColor: Color(0xffF2BC04));
          });
          break;
        case 2:
          setState(() {
            theme = ThemeBar(
                selectionColor: Color(0xff6AAE7B),
                unSelectionColor: Color(0xff254260),
                backgroundColor: Color(0xff774524));
          });
          break;
        case 3:
          setState(() {
            theme = ThemeBar(
                selectionColor: Color(0xff061222),
                unSelectionColor: Color(0xff254260),
                backgroundColor: Color(0xff6AAE7B));
          });
          break;
        default:
          setState(() {
            theme = ThemeBar(
                selectionColor: Color(0xffF2BC04),
                unSelectionColor: Color(0xff254260),
                backgroundColor: Color(0xff061222));
          });
          break;
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: new TabBar(
          controller: _tabController,
          tabs: tabs,
          labelColor: theme.selectionColor, // Color(0xffFDAF17),
          unselectedLabelColor: theme.unSelectionColor, // Color(0xff254260),
          indicatorSize: TabBarIndicatorSize.label,
          indicatorPadding: EdgeInsets.all(5.0),
          indicator: UnderlineTabIndicator(borderSide: BorderSide.none),
          labelStyle: TextStyle(fontSize: 12),
        ),
        backgroundColor: theme.backgroundColor,
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Tab01(theme.backgroundColor),
            Tab01(theme.backgroundColor),
            Tab01(theme.backgroundColor),
            Tab01(theme.backgroundColor),
          ],
        ));
  }
}

class ThemeBar {
  final Color selectionColor;
  final Color unSelectionColor;
  final Color backgroundColor;

  ThemeBar({this.selectionColor, this.unSelectionColor, this.backgroundColor});
}
