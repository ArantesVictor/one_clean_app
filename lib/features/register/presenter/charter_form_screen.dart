import 'dart:io';

import 'package:flutter/material.dart';
import 'package:one_clean_app/features/register/domain/charter.dart';
import 'package:one_clean_app/features/register/domain/charter_provider.dart';
import 'package:one_clean_app/features/register/presenter/image_input.dart';
import 'package:provider/provider.dart';

class CharterFormScreen extends StatefulWidget {
  @override
  _CharterFormScreenState createState() => _CharterFormScreenState();
}

class _CharterFormScreenState extends State<CharterFormScreen> {
  final _nameController = TextEditingController();
  final _classController = TextEditingController();
  final _trendController = TextEditingController();
  File _pickedImage;

  void _selectImage(File pickedImage) {
    _pickedImage = pickedImage;
  }

  void _submitForm() {
    if (_nameController.text.isEmpty ||
        _classController.text.isEmpty ||
        _pickedImage == null) {
      return;
    }

    Provider.of<CharterProvider>(context, listen: false).addCharter(
      _nameController.text,
      _classController.text,
      _pickedImage,
    );

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Novo Personagem"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  ImageInput(this._selectImage),
                  SizedBox(height: 10),
                  TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      labelText: 'Nome',
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: _classController,
                    decoration: InputDecoration(
                      labelText: 'Classe',
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: _trendController,
                    decoration: InputDecoration(
                      labelText: 'Tendencia',
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.blue,
              ),
              onPressed: _submitForm,
              child: Text('Salvar'),
            )
          ],
        ),
      ),
    );
  }
}
