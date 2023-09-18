import 'package:flutter/material.dart';
import 'package:flutter_module_6/AlarmFragment.dart';
import 'package:flutter_module_6/ContactsFragment.dart';
import 'package:flutter_module_6/HomeFragment.dart';
import 'package:flutter_module_6/MailFragment.dart';
import 'package:flutter_module_6/PersonFragment.dart';
import 'package:flutter_module_6/ScheduleFragment.dart';
import 'package:flutter_module_6/SearchFragment.dart';
import 'package:flutter_module_6/SettingsFragment.dart';

void main() {
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
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(

          title: const Text('Innovation App'),
          bottom: const TabBar(
            isScrollable : true,
            tabs: [
              Tab(icon: Icon(Icons.home),text: 'home',),
              Tab(icon: Icon(Icons.search),text: 'search',),
              Tab(icon: Icon(Icons.mail),text: 'mail',),
              Tab(icon: Icon(Icons.schedule),text: 'schedule',),
              Tab(icon: Icon(Icons.person),text: 'person',),
              Tab(icon: Icon(Icons.alarm),text: 'alarm',),
              Tab(icon: Icon(Icons.contacts),text: 'contacts',),
              Tab(icon: Icon(Icons.settings),text: 'settings',),
            ],
          ),
        ),

        body: const TabBarView(
          children: [
            HomeFragment(),
            SearchFragment(),
            MailFragment(),
            ScheduleFragment(),
            PersonFragment(),
            AlarmFragment(),
            ContactsFragment(),
            SettingsFragment(),

          ],
        ),
      ),
    );
  }
}