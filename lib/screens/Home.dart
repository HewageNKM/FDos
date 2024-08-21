import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  handleNavigationClick(String where) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: handleNavigationClick(''),
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "FDos",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: const TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      contentPadding: EdgeInsets.all(8),
                      hintText: "Search"),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: const Row(
                  children: [
                    Text("All",
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              const Column(children: [

              ],)
            ],
          ),
        ),
      ),
    );
  }
}
