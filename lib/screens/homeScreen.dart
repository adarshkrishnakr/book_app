import 'package:flutter/material.dart';
import 'package:project/functions/dbFunctions.dart';
import 'package:project/screens/addBook.dart';
import 'package:project/screens/listBook.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    getAllBooks();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          AddBook(),
          Expanded(child: ListBook())

        ],
      )),
    );
  }
}
