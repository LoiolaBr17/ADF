import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/clone_instagram/pages/page1.dart';
import 'package:flutter_primeiro_projeto/pages/clone_instagram/pages/page2.dart';
import 'package:flutter_primeiro_projeto/pages/clone_instagram/pages/page3.dart';
import 'package:flutter_primeiro_projeto/pages/clone_instagram/pages/page4.dart';
import 'package:flutter_primeiro_projeto/pages/clone_instagram/pages/page5.dart';

class CloneInstagramPage extends StatefulWidget {
  const CloneInstagramPage({super.key});

  @override
  State<CloneInstagramPage> createState() => _CloneInstagramPageState();
}

class _CloneInstagramPageState extends State<CloneInstagramPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_box_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.message_outlined,
            ),
          ),
        ],
      ),
      body: IndexedStack(
        index: index,
        children: const [
          Page1(),
          Page2(),
          Page3(),
          Page4(),
          Page5(),
        ],
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          currentIndex: index,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() => index = value);
          },        
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.search_outlined), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.inbox_rounded), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          ],        
        ),
      ),
    );
  }
}
