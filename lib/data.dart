import 'package:drift/drift.dart';
// import 'package:flutter/material.dart';

part 'data.g.dart';

class Products extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get description => text()();
}

abstract class ProductsView extends View {
  Products get products;

  @override
  Query as() => select([products.title]).from(products);
}

@DriftDatabase(tables: [Products], views: [ProductsView])
class Database extends _$Database {
  Database(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 2;
}
