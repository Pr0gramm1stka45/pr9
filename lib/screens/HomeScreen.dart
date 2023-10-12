import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pr9/widgets/users_list.dart';

class HomeScreen extends StatefulWidget {
  final String title;
  const HomeScreen({required this.title});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(widget.title)),
    body: UsersList(),
    
    );
    
    
  }
}