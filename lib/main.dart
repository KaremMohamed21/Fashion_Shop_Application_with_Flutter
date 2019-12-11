import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fashion Shop'),
        backgroundColor: Colors.blue,
        actions: <Widget>[

          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              // Search Pressed
            },
          ),

          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              // Shopping Cart Pressed
            },
          )

        ],
      ),

      // Create Drawer
      drawer: Drawer(
        child: ListView(
          children: <Widget>[

            // Create Drawer Header
            UserAccountsDrawerHeader(
              accountName: Text('Karem Mohamed'),
              accountEmail: Text('karemkero21@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  child: Icon(Icons.person),
                  backgroundColor: Colors.grey,
                ),
              ),
            ),

            // Create Drawer Body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.dashboard),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('FAQs'),
                leading: Icon(Icons.question_answer),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
