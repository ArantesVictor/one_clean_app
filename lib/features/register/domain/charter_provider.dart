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
}
