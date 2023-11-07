import 'package:composite_example/composite_example.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Composite Design Pattern Example'),
      ),
      body: CompositeExample(),
    ),
  ));
}
