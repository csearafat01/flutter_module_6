import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      title: 'Flutter Module 6',
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List imageUrls = [
    {
      "img": "https://hips.hearstapps.com/hmg-prod/images/cute-cat-photos-1593441022.jpg?crop=0.670xw:1.00xh;0.167xw,0&resize=640:*",'title':'cat1'
    },
    {
      'img': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkN5hV2XmBVX7ckElXZJAYOLKMBm1v1s6qBkrhaxw&s','title':'cat2'
    },
    {
      'img': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt_zPMis8lyVU9MV0Htg5boyz7NP9LYkEY3A&usqp=CAU','title':'cat3'
    },
    {'img': 'https://thumbs.dreamstime.com/b/four-cute-cats-20650677.jpg','title':'cat4'},
    {
      'img': 'https://static.vecteezy.com/system/resources/thumbnails/002/098/204/small/silver-tabby-cat-sitting-on-green-background-free-photo.jpg','title':'cat5'
    },
    {
      'img': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuwWt86N3mO58gwo4JKldZHI6jOpXTVIMAq8_aIcex&s','title':'cat6'
    },
  ];
   HomeScreen({Key? key}) : super(key: key);

  mySnackBar(message, context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)
        )
    );

  }

  myAlertDialog(context){
    return showDialog(
        context: context,
        builder: (BuildContext context){
            return Expanded(
                child: AlertDialog(
                  title: Text('Alert!'),
                  content: Text('Do you want to delete?'),
                  actions: [
                    TextButton(onPressed: (){
                      mySnackBar('Successfully Deleted!', context);Navigator.of(context).pop();

                    }, child: Text('yes')),
                    TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text('No')),

                  ],
                 )
              );
           }
       );
  }

  @override
  Widget build(BuildContext context) {
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
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0,
          childAspectRatio: 1.2
        ),
          itemCount: imageUrls.length,
          itemBuilder: (context, index){
        return GestureDetector(
        onDoubleTap: (){mySnackBar(imageUrls[index]['title'], context);},
    child: Container(
    margin: EdgeInsets.all(5),
    width: double.infinity,
    height: 200,
    child: Image.network(imageUrls[index]['img']!,fit: BoxFit.fill,),
    ),
        );
    },
      )
    );
  }
}