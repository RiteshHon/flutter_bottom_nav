
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyPackage(),
    );
  }
}

  class MyPackage extends StatefulWidget {
    const MyPackage({Key? key}) : super(key: key);
    @override
    _MyPackageState createState() => _MyPackageState();
  }

  class _MyPackageState extends State<MyPackage> {

    int currentIndex = 0;

    List colorList = [
        Container(
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Text(
                'Home',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    height: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              )
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Text(
                'Search',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    height: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              )
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Text(
                'Wishlist',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    height: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              )
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Text(
                'Account',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    height: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              )
            ],
          ),
        )
    ];

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: colorList[currentIndex],

        bottomNavigationBar: BottomNavyBar(
          selectedIndex: currentIndex,
          onItemSelected: (index){
            setState(() {
              currentIndex = index;
            });
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              icon: Icon(Icons.home),
              title: Text(
                'Home',
                textAlign: TextAlign.center,
              ),
              activeColor: Colors.deepOrangeAccent,
              inactiveColor: Colors.blueGrey
            ),
            BottomNavyBarItem(
                icon: Icon(Icons.search),
                title: Text(
                  'Search',
                  textAlign: TextAlign.center,
                ),
                activeColor: Colors.deepOrangeAccent,
                inactiveColor: Colors.blueGrey
            ),
            BottomNavyBarItem(
                icon: Icon(Icons.favorite),
                title: Text(
                    'Wishlist',
                    textAlign: TextAlign.center,
                ),
                activeColor: Colors.deepOrangeAccent,
                inactiveColor: Colors.blueGrey
            ),
            BottomNavyBarItem(
                icon: Icon(Icons.account_circle_rounded),
                title: Text(
                  'Account',
                  textAlign: TextAlign.center,
                ),
                activeColor: Colors.deepOrangeAccent,
                inactiveColor: Colors.blueGrey
            )
          ],
        ),
      );
    }
  }



