import 'package:drift/native.dart';
import 'data.dart';

Future<void> main() async {
  final db = Database(NativeDatabase.memory());

  (await db.select(db.products).get()).forEach(print);

  await db.into(db.products).insert(ProductsCompanion.insert(
      title: "Flutter drift", description: "Drift DB"));

  (await db.select(db.products).get()).forEach(print);
}
