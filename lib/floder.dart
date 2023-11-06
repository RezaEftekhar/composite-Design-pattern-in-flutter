import 'package:composite_example/IElement.dart';
import 'package:composite_example/sizeConverter.dart';
import 'package:flutter/material.dart';

class Folder extends StatelessWidget implements IElement {
  final String name;
  final bool isInitiallyExpanded;
  final List<IElement> elements;

  Folder(this.name, {this.isInitiallyExpanded = false, required this.elements});

  @override
  int getSize() {
    var sum = 0;

    for (final element in elements) {
      sum += element.getSize();
    }

    return sum;
  }

  @override
  Widget display(BuildContext context) {
    return Theme(
      data: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(primary: Colors.black),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: ExpansionTile(
          leading: const Icon(Icons.folder),
          title: Text('$name (${ElementSizeConverter.bytesToString(getSize())})'),
          initiallyExpanded: isInitiallyExpanded,
          children: elements.map((element) => element.display(context)).toList(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) => display(context);
}