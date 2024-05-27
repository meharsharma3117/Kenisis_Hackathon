import 'package:flutter/material.dart';
import 'package:kenesis_app/pages/homePage.dart';
import 'package:kenesis_app/pages/trackingPage.dart';

import 'pages/morePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: routeChecker(),
    );
  }
}

class routeChecker extends StatefulWidget {
  const routeChecker({Key? key}) : super(key: key);

  @override
  State<routeChecker> createState() => _routeCheckerState();
}

class _routeCheckerState extends State<routeChecker> {
  String currUser = "Employee";

  int currentIndex = 0; //only for stful

  @override
  Widget build(BuildContext context) {
    final screens = [homePage(), trackingPage(), morePage()];
    return Scaffold(
        backgroundColor: Color(0xff06283D),
        body: screens[currentIndex],
        bottomNavigationBar: currUser == "Employee"
            ? Container(
                child: BottomNavigationBar(
                  type: BottomNavigationBarType.shifting,
                  currentIndex: currentIndex,
                  backgroundColor: Colors.white,
                  selectedItemColor: Colors.white,
                  unselectedItemColor: Colors.white54,
                  showUnselectedLabels: false,
                  showSelectedLabels: false,
                  iconSize: 28,
                  //to change index put
                  onTap: (index) => setState(() => currentIndex = index),
                  items: const [
                    //cannot hot reload with only 1 item need atleast 2
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home,
                      ),
                      label: "home",
                      backgroundColor: Colors.transparent,
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.timeline,
                        ),
                        label: "stats", //can give
                        backgroundColor: Colors.transparent),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.favorite_border,
                        ),
                        label: "more",
                        backgroundColor: Colors.transparent),
                  ],
                ),
              )
            : Container(
                child: BottomNavigationBar(
                  type: BottomNavigationBarType.shifting,
                  currentIndex: currentIndex,
                  backgroundColor: Colors.white,
                  selectedItemColor: Colors.white,
                  unselectedItemColor: Colors.white54,
                  showUnselectedLabels: false,
                  showSelectedLabels: false,
                  iconSize: 28,
                  //to change index put
                  onTap: (index) => setState(() => currentIndex = index),
                  items: const [
                    //cannot hot reload with only 1 item need atleast 2
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home,
                      ),
                      label: "home",
                      backgroundColor: Colors.transparent,
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.timeline,
                        ),
                        label: "stats", //can give
                        backgroundColor: Colors.transparent),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.favorite_border,
                        ),
                        label: "more",
                        backgroundColor: Colors.transparent),
                  ],
                ),
              ));
  }
}
