import 'package:composite_example/Element.dart';
import 'package:composite_example/floder.dart';
import 'package:flutter/material.dart';

class CompositeExample extends StatelessWidget {
  const CompositeExample();

  Widget _buildContent() {
    final musicFolder = Folder('Music', elements: [
      const AudioElement(name: 'Darude - Sandstorm.mp3', size: 2612453),
      const AudioElement(name: 'Toto - Africa.mp3', size: 3219811),
      const AudioElement(name: 'Bag Raiders - Shooting Stars.mp3', size: 3811214),
    ]);

    final moviesFolder = Folder('Movies', elements: [
      const VideoElement(name: 'The Matrix.avi', size: 951495532),
      const VideoElement(name: 'The Matrix Reloaded.mp4', size: 1251495532),
    ]);

    final catPicturesFolder = Folder('Cats', elements: [
      const ImageElement(name: 'Cat 1.jpg', size: 844497),
      const ImageElement(name: 'Cat 2.jpg', size: 975363),
      const ImageElement(name: 'Cat 3.png', size: 1975363),
    ]);

    final picturesFolder = Folder('Pictures', elements: [
      catPicturesFolder,
      const ImageElement(name: 'Not a cat.png', size: 2971361),
    ]);

    final mainFolder = Folder('Media', isInitiallyExpanded: true, elements: [
      musicFolder,
      moviesFolder,
      picturesFolder,
      Folder('New Folder', elements: []),
      const TextElement(name: 'Nothing suspicious there.txt', size: 430791),
      const TextElement(name: 'TeamTrees.txt', size: 104),
    ]);

    return mainFolder;
  }

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const ScrollBehavior(),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: _buildContent(),
        ),
      ),
    );
  }
}