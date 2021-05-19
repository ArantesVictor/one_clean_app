import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart' as path;

class DataBaseUtil {
  static Future<sql.Database> dataBase() async {
    final dbPath = await sql.getDatabasesPath();
    return sql.openDatabase(
      path.join(dbPath, 'character.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE character (id TEXT PRIMARY KEY, name TEXT, class TEXT, image TEXT)',
        );
      },
      version: 1,
    );
  }

  static Future<void> inserts(String table, Map<String, Object> data) async {
    final db = await DataBaseUtil.dataBase();
    await db.insert(
      table,
      data,
      conflictAlgorithm: sql.ConflictAlgorithm.replace,
    );
  }
}
