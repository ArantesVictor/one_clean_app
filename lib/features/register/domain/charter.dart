import 'dart:io';

import 'package:flutter/material.dart';

class Charter {
  final String id;
  final String name;
  final String classe;
  final File image;

  Charter({
    @required this.id,
    @required this.name,
    @required this.classe,
    @required this.image,
  });
}
