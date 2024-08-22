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
        backgroundColor: Colors.green[400],
        onPressed: () => _add_dialog(context),
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey,
                ),
                child: const TextField(
                  maxLines: 1,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(borderSide: BorderSide.none),
                    prefixIcon: Icon(Icons.search),
                    contentPadding: EdgeInsets.all(16),
                    hintText: "Search",
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 30),
                color: const Color(0x00f8fafc),
                child: const Row(
                  children: [
                    Text(
                      "All",
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Expanded(
                  child: ListView(
                children: [],
              ))
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _add_dialog(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Center(child: Text('Add Note')),
        content: Column(
          children: [form_field("To Do", 16, 16, 8, null, 16)],
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text('Add'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

Widget form_field(String placeholder, double roundedSize, double hPadding,
    double vPadding, IconData? icon, double innerPadding) {
  return Container(
    padding:
        EdgeInsets.symmetric(horizontal: hPadding, vertical: vPadding ?? 0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: Colors.grey,
    ),
    child: TextField(
      maxLines: 1,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(borderSide: BorderSide.none),
        prefixIcon: Icon(icon),
        contentPadding: EdgeInsets.all(innerPadding),
        hintText: placeholder,
      ),
    ),
  );
}
