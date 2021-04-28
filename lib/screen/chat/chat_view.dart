import 'package:flutter/material.dart';
import 'package:fluttergram/ui_shared/size_config.dart';
import 'package:fluttergram/ui_shared/behavior.dart';
import 'package:fluttergram/widgets/bottom_navbar.dart';
import 'package:fluttergram/widgets/button_search.dart';
import 'package:fluttergram/widgets/message_menu.dart';
import 'package:fluttergram/ui_shared/constants.dart';

class ChatScreen extends StatefulWidget {
  static String route = "/chat";

  _ChatState createState() => _ChatState();
}

class _ChatState extends State<ChatScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  String emailError;
  String passwordError;

  void goTo(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }

  static const _whiteBorderDecoration = BoxDecoration(
    shape: BoxShape.circle,
    border: Border.fromBorderSide(BorderSide(color: Colors.white, width: 3.0)),
  );
  static const _greyBoxShadowDecoration = BoxDecoration(
    shape: BoxShape.circle,
    boxShadow: [
      BoxShadow(color: Colors.grey, blurRadius: 1.0, spreadRadius: 1.0)
    ],
  );

  var button = Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Positioned(
        bottom: 0,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 0),
          child: TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
                side: BorderSide(
                  color: Colors.white,
                ),
              ),
              backgroundColor: Color(0xFFF5F6F9),
              primary: primaryColor,
            ),
            child: Icon(
              Icons.photo_rounded,
              color: textColor,
              size: 35,
            ),
            onPressed: () {},
          ),
        ),
      ),
    ],
  );
  @override
  Widget build(BuildContext context) {
    final radius = 14.0;
    SizeConfig().init(context);

    return Scaffold(
        key: Key('chat_view'),
        appBar: AppBar(
          title: Text("Message", textAlign: TextAlign.center),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  showSearch(
                    context: context,
                    delegate: DataSearch(),
                  );
                })
          ],
        ),
        bottomNavigationBar: BottomNavBar(selectedMenu: MenuState.message),
        body: ScrollConfiguration(
          behavior: NeverGrowthScroll(),
          child: SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SizedBox(height: SizeConfig.screenHeight * 0.05),
                Center(
                  child: Container(
                    decoration: _whiteBorderDecoration,
                    height: getProportionateScreenHeight(100),
                    width: getProportionateScreenWidth(300),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: [
                            button,
                            Text('Damaris'),
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          children: [
                            button,
                            Text('Gladis'),
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          children: [
                            button,
                            Text('Carlos'),
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          children: [
                            button,
                            Text('Camilo'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                MessageMenu(
                  text: "Alejandro",
                  message: "Que es Fluttergram?",
                  press: () => {},
                ),
                MessageMenu(
                  text: "Edwin",
                  message: "una partidad del Fifa?",
                  press: () {},
                ),
                MessageMenu(
                  text: "Jeferson",
                  message: "Hola, como estas",
                  press: () {},
                ),
                MessageMenu(
                  text: "Samuel",
                  message: "Todo bien?",
                  press: () {},
                ),
                MessageMenu(
                  text: "Rodolfo",
                  message: "Muy bien",
                  press: () {},
                ),
                MessageMenu(
                  text: "Janeth",
                  message: "Hi, good morning",
                  press: () {},
                ),
              ],
            ),
          ),
        ));
  }
}
