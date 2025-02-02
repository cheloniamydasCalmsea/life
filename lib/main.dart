import 'package:flutter/material.dart';
import './style.dart' as style;
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp( MaterialApp(
    theme: style.theme,
    home: MyApp(),
  )
  );
}

class MyApp extends StatefulWidget {
  const  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var tab = 0;

  getData() async {
    var result = await http.get(Uri.parse('https://codingapple1.github.io/app/data.json'));
    print(jsonDecode(result.body));
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('instagram'),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.add_box_outlined),
            iconSize: 30,
          )
        ],

      ),
      body: [Home(), Text('page')][tab],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (i){
          setState(() {
            tab = i;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'HOME'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: 'SHOP'),
        ],
      ),


    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (c,i){
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network('https://codingapple1.github.io/app/car0.png'),
            Text('11'),
            Text('22'),
            Text('33'),
          ],
        );
      },
    );
  }
}
