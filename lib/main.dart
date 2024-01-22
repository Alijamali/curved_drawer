import 'package:curved_drawer/ui_screens/page1.dart';
import 'package:curved_drawer/ui_screens/page2.dart';
import 'package:curved_drawer/ui_screens/page3.dart';
import 'package:curved_drawer/ui_screens/page4.dart';
import 'package:curved_drawer_fork/curved_drawer_fork.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;
  PageController pageController = PageController(initialPage: 0);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Curved Drawer',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('C u r v e d   D r a w e r'),
          centerTitle: true,
        ),
        drawer: CurvedDrawer(
          index: index,
          //now , we can Customized Drawer
          color:const Color.fromARGB(255, 255, 240, 219),
          backgroundColor: Colors.lightGreenAccent,
          labelColor: Colors.red,
          width: 70,
          animationCurve: Curves.bounceInOut,
          animationDuration: const Duration(seconds: 1),

          items: const <DrawerItem>[
            DrawerItem(icon: Icon(Icons.home), label: "Home"),
            DrawerItem(icon: Icon(Icons.currency_bitcoin), label: "Market"),
            DrawerItem(icon: Icon(Icons.person), label: "Sign Up"),
            DrawerItem(icon: Icon(Icons.phone), label: "Contact"),
          ],
          onTap: (newIndex) {
            //now , when click any item, go to new widget screen.....
            pageController.jumpToPage(newIndex);
            setState(() {
              index = newIndex;
            });
          },
        ),
        //create right side drawer ==> end drawer

        endDrawer:CurvedDrawer(
          isEndDrawer: true,
          index: index,
          //now , we can Customized Drawer
          color:const Color.fromARGB(255, 255, 240, 219),
          backgroundColor: Colors.lightGreenAccent,
          labelColor: Colors.red,
          width: 70,
          animationCurve: Curves.bounceInOut,
          animationDuration: const Duration(seconds: 1),

          items: const <DrawerItem>[
            DrawerItem(icon: Icon(Icons.home), label: "Home"),
            DrawerItem(icon: Icon(Icons.currency_bitcoin), label: "Market"),
            DrawerItem(icon: Icon(Icons.person), label: "Sign Up"),
            DrawerItem(icon: Icon(Icons.phone), label: "Contact"),
          ],
          onTap: (newIndex) {
            //now , when click any item, go to new widget screen.....
            pageController.jumpToPage(newIndex);
            setState(() {
              index = newIndex;
            });
          },
        ) ,
        body: PageView(
          //for disable change page when drag
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: const[Page1(), Page2(), Page3(), Page4()],
        ),
      ),
    );
  }
}
