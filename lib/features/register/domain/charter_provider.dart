import 'dart:io';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'charter.dart';

class CharterProvider with ChangeNotifier {
  List<Charter> _items = [];

  List<Charter> get item {
    return [..._items];
  }

  int get itensCount {
    return _items.length;
  }

  Charter itemByIndex(int index) {
    return _items[index];
  }

  void addCharter(String name, String classe, File image) {
    final newCharter = Charter(
      id: Random().nextDouble().toString(),
      name: name,
      classe: classe,
      image: image,
    );
    _items.add(newCharter);
    notifyListeners();
  }
}
