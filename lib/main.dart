import 'package:flutter/material.dart';
import 'package:use_theme/tabs/first.dart';
import 'package:use_theme/tabs/second.dart';
import 'package:use_theme/tabs/third.dart';
import 'package:use_theme/tabs/forth.dart';

void main(){
  runApp(new MaterialApp(
    title: "Menggunakan tab",
    //home
    home: new MyHome()));
}

class MyHome extends StatefulWidget{
  @override
  MyHomeState createState() => new MyHomeState();
}

// singleTickerPRoviderSTateMixin is used for animation

class MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin{
  /*
  *-----------------setup tabs---------------------*
  */
  //create a tab controller
  TabController controller;

  @override
  void initState(){
    super.initState();  

    //initializing the tab controller
    controller = new TabController(length: 4, vsync: this);

  }
    @override
    void dispose(){
      //dispose of the tab controller
      controller.dispose();
      super.dispose();
    }

    TabBar getTabBar(){
      return new TabBar(
        tabs: <Tab>[
          new Tab(
            //set icon to the tab
            icon: new Icon(Icons.favorite),
          ),
          new Tab(
            icon: new Icon(Icons.adb),
          ),
          new Tab(
            icon: new Icon(Icons.adb),
          ),
          new Tab(
            icon: new Icon(Icons.access_time),
          )
        ],
        //setup the controller
        controller: controller,
      );
    }

    TabBarView getTabBarView(var tabs){
      return new TabBarView(
        //add tabs as widgets
        children: tabs,
        //set the controller
        controller: controller,
      );
    }

    /*
    *-------------Setup the page by setting up tabs in the body ---------- 
    */
    @override
    Widget build(BuildContext context){
      return new Scaffold(
        appBar: new AppBar(
          //title
          title: new Text("Menggunakan Tabs"),
          //Set the background color of the app bar
          backgroundColor: Colors.blue,
          //set the bottom property of the Appbar to include a Tab Bar
          bottom: getTabBar()),
        //set the TabBar view as the body scaffold
        body: getTabBarView(<Widget>[new First(), new Second(), new Third(), new Forth()]),
      );
    }
}

