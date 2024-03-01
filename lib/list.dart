import 'package:flutter/material.dart';
import 'package:test_list/person.dart';

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  ///
  List myList = [
    {"name": "James", "email": "james@gmail.com"},
    {"name": "Richard", "email": "richard@gmail.com"},
    {"name": "Charne", "email": "charne@gmail.com"},
    {"name": "Ivan", "email": "ivan@gmail.com"},
    {"name": "Ethan", "email": "ethan@gmail.com"},
    {"name": "Carlos", "email": "charlos@gmail.com"}
  ];

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: myList.length,
          itemBuilder: (BuildContext context, i) {
            var person = myList[i];
            return //
                Center(
              child: Column(
                children: [
                  Text('${person['name']}'),
                  Text('${person['email']}'),
                ],
              ),
            );
          }),
    );
  }
}
