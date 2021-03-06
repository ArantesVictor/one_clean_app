import 'dart:io';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:one_clean_app/utils/data_base_util.dart';
import 'charter.dart';

//usado no home e register

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
    final newCharacter = Charter(
      id: Random().nextDouble().toString(),
      name: name,
      classe: classe,
      image: image,
    );
    _items.add(newCharacter);
    DataBaseUtil.inserts('character', {
      'id': newCharacter.id,
      'name': newCharacter.name,
      'class': newCharacter.classe,
      'image': newCharacter.image.path,
    });
    notifyListeners();
  }
}
