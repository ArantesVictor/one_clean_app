import 'package:flutter/material.dart';
import 'package:one_clean_app/features/register/domain/charter_provider.dart';
import 'package:one_clean_app/utils/app_routes.dart';
import 'package:provider/provider.dart';

class CarterListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personagens"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.CHARTER_FORM);
            },
          ),
        ],
      ),
      body: Center(
        child: Consumer<CharterProvider>(
          child: Center(
            child: Text('centro de tudo'),
          ),
          builder: (ctx, charterProvider, child) =>
              charterProvider.itensCount == 0
                  ? child
                  : ListView.builder(
                      itemCount: charterProvider.itensCount.toInt(),
                      itemBuilder: (ctx, i) => ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              FileImage(charterProvider.itemByIndex(i).image),
                        ),
                        title: Text(charterProvider.itemByIndex(i).name),
                        onLongPress: () {},
                      ),
                    ),
        ),
      ),
    );
  }
}
