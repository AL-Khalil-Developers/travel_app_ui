import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: ListView(
        children: <Widget>[
          _customTitleBar(),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 1.0, horizontal: 35.0),
            child: Text(
              'Houz Cheese',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 35.0,
            ),
            child: Row(
              children: <Widget>[
                Text(
                  'Burger ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                Image.asset(
                  'assets/images/burger.png',
                  height: 30.0,
                  width: 30.0,
                ),
              ],
            ),
          ),

          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 35.0, vertical: 8.0),
            child: Row(
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: 20.0,
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.blueGrey,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/2.0,
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search here',
                          ),
                        ),
                      ),
                    ],
                  ),
                  height: 50.0,
                  width: MediaQuery.of(context).size.width / 1.5,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      border: Border.all(color: Colors.black38, width: 0.5),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black38,
                            offset: Offset.zero,
                            blurRadius: 1.5,
                            spreadRadius: 0.1)
                      ]),
                ),
                SizedBox(width: 10.0,),
                Container(
                  height: 50.0,
                  width: 55.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      border: Border.all(color: Colors.black38, width: 0.5),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black38,
                            offset: Offset.zero,
                            blurRadius: 1.5,
                            spreadRadius: 0.1)
                      ]),
                  child: Icon(
                    Icons.swap_horiz,color: Colors.blue,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:35.0,vertical: 10.0),
            child: Wrap(
              children: <Widget>[
                CategoriesChips('Burger'),
                CategoriesChips('Pizza'),
                CategoriesChips('Pasta'),
                CategoriesChips('Salad'),
              ],
            ),
          ),
          SizedBox(height: 15.0,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:35.0,vertical: 8.0),
            child: ProductCard(),
          ),
        ],
      ),
    ));
  }
}

class _customTitleBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 10.0,
            ),
            Icon(
              Icons.menu,
              color: Colors.black45,
              size: 30.0,
            ),
            Spacer(),
            Icon(
              Icons.shopping_basket,
              color: Colors.brown,
              size: 30.0,
            ),
            SizedBox(
              width: 10.0,
            )
          ],
        ),
      ),
    );
  }
}


class CategoriesChips extends StatefulWidget {
  String categoryNames;
  CategoriesChips(this.categoryNames);
  @override
  _CategoriesChipsState createState() => _CategoriesChipsState(categoryNames);
}
class _CategoriesChipsState extends State<CategoriesChips> {
  String categoryNames;
  _CategoriesChipsState(this.categoryNames,);
  bool taped = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ChoiceChip(
        label: Text(categoryNames,style: TextStyle(color: Colors.black),),
        selected: taped,
        onSelected: (bool isPressed){
          setState(() {
            taped = isPressed;
          });
        },
        selectedColor: Color(0xFFFDCCC7),
        backgroundColor: Colors.white,
        padding: EdgeInsets.all(8.0),
        shadowColor: Colors.cyan,
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 250.0,
      decoration: BoxDecoration(color: Colors.deepOrangeAccent,
          shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(30.0),bottomLeft: Radius.circular(60.0),topLeft: Radius.circular(80.0),topRight: Radius.circular(45.0))
      ),
    );
  }
}





