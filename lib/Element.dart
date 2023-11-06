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


class AudioElement extends Element {
  const AudioElement({
    required String name,
    required int size,
  }) : super(name: name, size: size, icon: Icons.music_note);
}

class ImageElement extends Element {
  const ImageElement({
    required String name,
    required int size,
  }) : super(name: name, size: size, icon: Icons.image);
}

class TextElement extends Element {
  const TextElement({
    required String name,
    required int size,
  }) : super(name: name, size: size, icon: Icons.description);
}

class VideoElement extends Element {
  const VideoElement({
    required String name,
    required int size,
  }) : super(name: name, size: size, icon: Icons.movie);
}