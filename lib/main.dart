// import 'package:drift/native.dart';
import 'data.dart';

Future<void> main() async {
  final database = MyDatabase();

  // Simple insert:
  await database.into(database.exercise).insert(ExerciseCompanion.insert(
      title: 'breathing', description: 'my first category'));

  // Simple select:
  final allExs = await database.select(database.exercise).get();
  print('Categories in database: $allExs');
}
