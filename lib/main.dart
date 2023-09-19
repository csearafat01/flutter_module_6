import 'package:flutter/material.dart';

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
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const Activity1('This is from Home To Activity1')));
          }, child: const Text('Go Activity1')),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const Activity2('This is from Home To Activity2')));
          }, child: const Text('Go Activity2')),
        ],
      ),
    );
  }
}

class Activity1 extends StatelessWidget {
  final String mgs;
   const Activity1(
      this.mgs,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(mgs),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const Activity2('This is from Activity1 To Activity2')));
          }, child: const Text('Go Activity2')),
          ElevatedButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
          }, child: const Text('Back To Home'))
        ],
      ),
    );
  }
}

class Activity2 extends StatelessWidget {
  final String mgs;
   const Activity2(
      this.mgs,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(mgs),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const Activity1('This is from Activity2 To Activity1')));
          }, child: const Text('Go Activity1')),
          ElevatedButton(onPressed: (){
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          }, child: const Text('Back To Home'))
        ],
      ),
    );
  }
}
