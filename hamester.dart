import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int coins = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(child: Column(children: [
        Row(children: [
          Expanded(
              child: Column(children: [Text("Sponser"), Text("Mahm0o2")],)),
          Expanded(
              child: Column(children: [Text("3H Income"), Text(coins.toString())],)),
          Expanded(child: Column(children: [Text("Total Earned"), Text("10K")],))
        ],),
        SizedBox(height: 22,),
        Text("10,000"),

        InkWell(onTap: () {
          coins+=1;
          setState(() {
            
          });
          print("test");
        },child: Image.asset('assets/images/coin.png'),)
      ],),),
    );
  }
}
