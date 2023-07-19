//AppBar Actions
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//=============Main===============================
void main() {
  runApp(const myApp());
}

//================MyApp=============================
class myApp extends StatelessWidget {
  const myApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homeActivity(),
    );
  }
}

//=============Activity Page============================
class homeActivity extends StatelessWidget {
  const homeActivity({super.key});

  //=====SnackBar Function==========================
  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    //================Scaffold==========================
    return Scaffold(
      //============App Bar=======================
      appBar: AppBar(
        title: Text("Floating Button"),
        titleSpacing: 10,
        // centerTitle: true,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        backgroundColor: Colors.pink,
        //=======Actions=========================
        actions: [
          IconButton(
              onPressed: () {
                MySnackBar("I am facebook", context);
              },
              icon: Icon(Icons.facebook)),
          IconButton(
              onPressed: () {
                MySnackBar("I am comment", context);
              },
              icon: Icon(Icons.comment)),
          IconButton(
              onPressed: () {
                MySnackBar("I am person", context);
              },
              icon: Icon(Icons.person)),
        ],
       ),

      //===========floating actions button===========================
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.pink,
        onPressed: () {
          MySnackBar("I am aminul", context);
        },
      ),


      //=============Bottom Nav=========================================
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
        ],
        onTap: (int index) {
          if (index == 0) {
            MySnackBar("I am bottom menu", context);
          }
          if (index == 01) {
            MySnackBar("I am bottom menu", context);
          }
          if (index == 2) {
            MySnackBar("I am bottom menu", context);
          }
        },
      ),
    );
  }
}
