import 'package:bitcontacts/lists/staffList.dart';
import 'package:bitcontacts/screens/profile.dart';
import 'package:bitcontacts/widgets/listcontact.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:bitcontacts/widgets/gridcontact.dart';


class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  int _crossAxisCount = 2;
  double _aspectRatio = 1.5;
  ViewType _viewType =  ViewType.list;
  bool isGrid = false;
  int _selectedIndex = 0;

static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  List<Widget> _widgetOptions = <Widget>[
    Contacts(),
    Text('Like'),
    Text('Chat'),
    MainPageState()
  ];

List<Widget> _widgetTitle = <Widget>[
    Text(
      'Faculty List',
       style: TextStyle(color: Colors.black),
       ),
    Text(
      'Favorite Staff',
       style: TextStyle(color: Colors.black),
       ),
       Text(
      'Chat with Faculty',
       style: TextStyle(color: Colors.black),
       ),
       Text(
      'Profile',
       style: TextStyle(color: Colors.black),
       ),
  ];


  @override
  void initState() {
    _widgetOptions[0] = listContact;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // backgroundColor: Colors.white,
        title: _widgetTitle.elementAt(_selectedIndex),
        leading: IconButton(
          icon: Icon(Icons.menu,color: Colors.black,), 
          onPressed: (() {})),
        actions: [
          IconButton(
            icon: Icon(Icons.search_sharp),
            color: Colors.black,
            onPressed: (){}
            ),
            IconButton(
              icon: Icon(_widgetOptions[0] == listContact
              ?Icons.grid_view
              : Icons.view_list),
              onPressed: (() {
                if(_widgetOptions[0] == listContact){
                  _crossAxisCount = 2;
                  _aspectRatio = 1.5;
                  _viewType == ViewType.grid;
                  
                  _widgetOptions[0] = gridContact;
                } else {
                  _crossAxisCount = 1;
                  _aspectRatio = 5;
                  _viewType = ViewType.list;
                  _widgetOptions[0] = listContact;
                }
                setState(() {
                  
                });
              })
              )
        ],
        
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.white, Colors.lightBlueAccent],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft),
          ),
        ),
        titleSpacing: 6
        ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: GNav(
        backgroundColor: Color.fromARGB(0, 75, 51, 252),
        activeColor: Color.fromARGB(255, 33, 27, 27),
        tabBackgroundColor: Color.fromARGB(255, 206, 223, 231),
        padding: EdgeInsets.all(20),
        tabs:[
          GButton(
            icon:Icons.home,
            text: 'Home',),
            GButton(
            icon:Icons.favorite,
            text: 'Favorite',),
            GButton(
            icon:Icons.chat,
            text: 'Chat',),
            GButton(
            icon:Icons.person,
            text: 'Profile',),            
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
        
         ),
    );
  
  
}}

enum ViewType { grid, list }