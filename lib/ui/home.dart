import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Home_PageState();
  }

}

class Home_PageState extends State<StatefulWidget>{
  int _currentIndex = 0;
  final List<Widget> _children = [
    Text('Home',
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.grey),),
    Text('Notify',
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.grey),),
    Text('Map',
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.grey),),
    Text('Profile',
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.grey),),
    Text('Setup',
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.grey),)
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home'),
      ),
      body: Center(
       child: _children[_currentIndex],),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.blue,
          primaryColor: Colors.white,
          textTheme: Theme.of(context).textTheme.copyWith(caption: new TextStyle(color: Colors.lightBlueAccent))
        ),      
      child: BottomNavigationBar(
        onTap: onTabTapped,
                currentIndex: _currentIndex,
                fixedColor: Colors.blue,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.dashboard),
                    title: Text('')
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.notifications),
                    title: Text('')
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.explore),
                    title: Text('')
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    title: Text('')
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    title: Text('')
                  )
                ],
              ),
      )
            );
          }
          
        
          void onTabTapped(int index) {
            setState(() {
              _currentIndex = index;
            });
  }
}