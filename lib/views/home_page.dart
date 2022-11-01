import 'package:flutter/material.dart';
import 'package:prova/components/home_components.dart';
import 'package:prova/views/news.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios_sharp,
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10, left: 20),
            child: Row(
              children: const [
                Text(
                  'Categories',
                  style: TextStyle(fontSize: 30),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  HomeComponents().cards(context,
                      icon: Icons.policy, color: Colors.amber, title: 'Policy'),
                  HomeComponents().cards(context,
                      icon: Icons.science,
                      color: Colors.blueGrey,
                      title: 'Science'),
                  HomeComponents().cards(context,
                      icon: Icons.ac_unit_sharp,
                      color: Colors.lightGreen,
                      title: 'Something'),
                ],
              ),
              Column(
                children: [
                  HomeComponents().cards(context,
                      icon: Icons.sports, color: Colors.pink, title: 'Sport'),
                  HomeComponents().cards(context,
                      icon: Icons.computer,
                      color: Colors.red,
                      title: 'Technology'),
                  HomeComponents().cards(context,
                      icon: Icons.anchor_outlined,
                      color: Colors.grey,
                      title: 'Another Thing'),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              width: 100,
              height: 100,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) => const News(),
                      ),
                    );
                  },
                  child: const Text(
                    'Next',
                    style: TextStyle(fontSize: 30),
                  )),
            ),
          ),
        ]),
      ),
    );
  }
}
