import 'dart:convert';

import 'package:logger/logger.dart' as ext;
import 'package:todo/application/share/logger.dart';

final _logger = ext.Logger(printer: CustomPrinter(printTime: true));

class LoggerImpl implements Logger {
  @override
  void v(Object message, [Object? error, StackTrace? stackTrace]) {
    _logger.t(message, error: error, stackTrace: stackTrace);
  }

  @override
  void d(Object message, [Object? error, StackTrace? stackTrace]) {
    _logger.d(message, error: error, stackTrace: stackTrace);
  }

  @override
  void i(Object message, [Object? error, StackTrace? stackTrace]) {
    _logger.i(message, error: error, stackTrace: stackTrace);
  }

  @override
  void w(Object message, [Object? error, StackTrace? stackTrace]) {
    _logger.w(message, error: error, stackTrace: stackTrace);
  }

  @override
  void e(Object message, [Object? error, StackTrace? stackTrace]) {
    _logger.e(message, error: error, stackTrace: stackTrace);
  }

  @override
  void f(Object message, [Object? error, StackTrace? stackTrace]) {
    _logger.f(message, error: error, stackTrace: stackTrace);
  }
}

class CustomPrinter extends ext.LogPrinter {
  static final levelPrefixes = {
    ext.Level.trace: '[T]',
    ext.Level.debug: '[D]',
    ext.Level.info: '[I]',
    ext.Level.warning: '[W]',
    ext.Level.error: '[E]',
    ext.Level.fatal: '[FATAL]',
  };

  static final levelColors = {
    ext.Level.trace: ext.AnsiColor.fg(ext.AnsiColor.grey(0.5)),
    ext.Level.debug: const ext.AnsiColor.none(),
    ext.Level.info: const ext.AnsiColor.fg(12),
    ext.Level.warning: const ext.AnsiColor.fg(208),
    ext.Level.error: const ext.AnsiColor.fg(196),
    ext.Level.fatal: const ext.AnsiColor.fg(199),
  };

  final bool printTime;
  final bool colors;
  final String indent;
  final int maxDepth;

  CustomPrinter({
    this.printTime = false,
    this.colors = true,
    this.indent = '  ',
    this.maxDepth = 5,
  });

  @override
  List<String> log(ext.LogEvent event) {
    final messageStr = _stringifyMessage(event.message);
    final errorStr = event.error != null ? '  ERROR: ${event.error}' : '';
    final timeStr = printTime ? '${event.time.toIso8601String()}|' : '';
    final prefix = '${_labelFor(event.level)} $timeStr ';
    final lines = const LineSplitter().convert(messageStr);
    if (lines.length <= 1) {
      return ['$prefix$messageStr$errorStr'];
    }
    return [
      for (var i = 0; i < lines.length; i++)
        '$prefix${lines[i]}${i == 0 ? errorStr : ''}',
    ];
  }

  String _labelFor(ext.Level level) {
    var prefix = levelPrefixes[level]!;
    var color = levelColors[level]!;
    return colors ? color(prefix) : prefix;
  }

  String _stringifyMessage(dynamic message) {
    final finalMessage = message is Function ? message() : message;
    if (finalMessage is Map || finalMessage is Iterable) {
      final pretty = _prettyEncode(finalMessage);
      if (pretty != null) {
        return pretty;
      }
    }
    return finalMessage.toString();
  }

  String? _prettyEncode(Object message) {
    try {
      final normalized = _normalizeForJson(message);
      return JsonEncoder.withIndent(indent).convert(normalized);
    } on Exception {
      return null;
    }
  }

  Object? _normalizeForJson(Object? value, [int depth = 0]) {
    if (value == null) {
      return null;
    }
    if (depth >= maxDepth) {
      return value.toString();
    }
    if (value is num || value is bool || value is String) {
      return value;
    }
    if (value is DateTime) {
      return value.toIso8601String();
    }
    if (value is Enum) {
      return value.name;
    }
    if (value is Map) {
      final result = <String, Object?>{};
      value.forEach((key, entry) {
        result[key.toString()] = _normalizeForJson(entry, depth + 1);
      });
      return result;
    }
    if (value is Iterable) {
      return value.map((entry) => _normalizeForJson(entry, depth + 1)).toList();
    }
    return value.toString();
  }
}
