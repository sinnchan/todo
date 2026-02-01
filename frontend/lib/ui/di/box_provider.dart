import 'package:hive_ce_flutter/hive_ce_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo/hive_registrar.g.dart';

part 'box_provider.g.dart';

@riverpod
Future<Box<T>> box<T>(Ref ref, String name) async {
  await ref.watch(hiveInitProvider.future);
  return Hive.openBox<T>(name);
}

// 最初の参照するとき1回だけinitする。
@Riverpod(keepAlive: true)
Future<void> hiveInit(Ref ref) async {
  await Hive.initFlutter();
  Hive.registerAdapters();
}
