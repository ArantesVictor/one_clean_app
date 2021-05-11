import 'package:flutter/material.dart';
import 'package:one_clean_app/features/register/presenter/image_input.dart';

class CharterFormScreen extends StatefulWidget {
  @override
  _CharterFormScreenState createState() => _CharterFormScreenState();
}

class _CharterFormScreenState extends State<CharterFormScreen> {
  final _nameController = TextEditingController();
  final _classController = TextEditingController();
  final _trendController = TextEditingController();

  void _submitForm() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Novo Personagem"),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  ImageInput(),
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
    );
  }
}
