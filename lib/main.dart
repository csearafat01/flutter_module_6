import 'package:flutter/material.dart';

void main() {
  // give me some widget
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      title: 'Flutter Module 6',
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  mySnackBar(message, context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      padding: EdgeInsets.all(25),
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(40))
      )
    );
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(

        title: const Text('Innovation App'),
        titleSpacing: 10,
        ///centerTitle: true,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 6,
        backgroundColor: Colors.green,
        actions: [
          IconButton(onPressed: (){mySnackBar('comment', context);}, icon: Icon(Icons.comment)),
          IconButton(onPressed: (){mySnackBar('search', context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){mySnackBar('settings', context);}, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){mySnackBar('email', context);}, icon: Icon(Icons.email))
        ],

      ),
      floatingActionButton: FloatingActionButton(
        elevation: 18,
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: (){mySnackBar('FloatingAction', context);},
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onTap: (int index){
          if(index == 0){
            mySnackBar('message', context);
          }if(index == 1){
            mySnackBar('home', context);
          }if(index == 2){
            mySnackBar('profile', context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.white70),
                  accountName: Text('Md. Arafat Rahman',style: TextStyle(color: Colors.black)),
                  accountEmail: Text('arafat.roman@outlook.com', style: TextStyle(color: Colors.black)),
                  currentAccountPicture: Image.network("https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png"),
                  onDetailsPressed: (){
                    mySnackBar('My Profile', context);
                  },
                )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: (){
                mySnackBar('home', context);
              },
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              onTap: (){
                mySnackBar('Email', context);
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
              onTap: (){
                mySnackBar('Phone', context);
              },
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.white70),
                  accountName: Text('Md. Arafat Rahman',style: TextStyle(color: Colors.black)),
                  accountEmail: Text('arafat.roman@outlook.com', style: TextStyle(color: Colors.black)),
                  currentAccountPicture: Image.network("https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png"),
                  onDetailsPressed: (){
                    mySnackBar('My Profile', context);
                  },
                )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: (){
                mySnackBar('home', context);
              },
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              onTap: (){
                mySnackBar('Email', context);
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
              onTap: (){
                mySnackBar('Phone', context);
              },
            ),
          ],
        ),
      ),
      body: (
      Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: (){mySnackBar('This is TextButton', context);}, child: Text('TextButton')),
              ElevatedButton(onPressed: (){mySnackBar('This is ElevatedButton', context);},child: Text('ElevatedButton'),style: buttonStyle,),
              OutlinedButton(onPressed: (){mySnackBar('This is OutlinedButton', context);}, child: Text('OutlinedButton')),

            ],
          ),

        ],
      )
      ),

    );
  }
}