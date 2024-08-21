import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Widget >'),
        actions: [
          myCustomIcon(myIcon: Icons.chat),
          myCustomIcon(myIcon: Icons.search),
          myCustomIcon(myIcon: Icons.person),
        ],
      ),
      body: ListView(
        children: [
          myCustomContainer(myColor: Colors.amber, myText: 'ONE'),
          myCustomContainer(myColor: Colors.green, myText: 'TWO'),
          myCustomContainer(myColor: Colors.red, myText: 'THREE'),
          myCustomContainer(myColor: Colors.blue, myText: 'FOUR'),
        ],
      ),
    );
  }

  Widget myCustomIcon({required IconData myIcon}) {
    return Container(
        padding: const EdgeInsets.all(4),
        child: GestureDetector(
            onTap: () {}, child: CircleAvatar(child: Icon(myIcon))));
  }

  Widget myCustomContainer({required Color myColor, required String myText}) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
      height: 200,
      decoration: BoxDecoration(
          color: myColor, borderRadius: BorderRadius.circular(30)),
      child: Center(
          child: Text(
        myText,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      )),
    );
  }
}
