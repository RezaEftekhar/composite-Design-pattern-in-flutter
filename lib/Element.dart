import 'package:composite_example/IElement.dart';
import 'package:composite_example/sizeConverter.dart';
import 'package:flutter/material.dart';

class Element extends StatelessWidget implements IElement {
  final String name;
  final int size;
  final IconData icon;

  const Element({
    required this.name,
    required this.size,
    required this.icon,
  });

  @override
  int getSize() => size;

  @override
  Widget display(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: ListTile(
        title: Text(name),
        leading: Icon(icon),
        trailing: Text(
          ElementSizeConverter.bytesToString(size),
        ),
        dense: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) => display(context);
}