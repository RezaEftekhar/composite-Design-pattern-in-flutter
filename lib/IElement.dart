import 'package:flutter/material.dart';

abstract class IElement {
  int getSize();
  Widget display(BuildContext context);
}