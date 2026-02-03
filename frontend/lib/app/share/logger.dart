// 例外的に許可
import 'package:todo/infra/common/logger.dart';

final Logger logger = LoggerImpl();

abstract interface class Logger {
  void v(Object message, [Object? error, StackTrace? stackTrace]);
  void d(Object message, [Object? error, StackTrace? stackTrace]);
  void i(Object message, [Object? error, StackTrace? stackTrace]);
  void w(Object message, [Object? error, StackTrace? stackTrace]);
  void e(Object message, [Object? error, StackTrace? stackTrace]);
  void f(Object message, [Object? error, StackTrace? stackTrace]);
}
