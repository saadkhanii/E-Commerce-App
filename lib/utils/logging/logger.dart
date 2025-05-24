import 'package:logger/logger.dart';

/// A custom logging helper class using the `logger` package.
class CLoggerHelper {
  /// Private static Logger instance with custom settings
  static Logger _logger = _createLogger(Level.debug);

  /// Create and return a logger with a specific level
  static Logger _createLogger(Level level) {
    return Logger(
      printer: PrettyPrinter(
        methodCount: 2,
        errorMethodCount: 8,
        lineLength: 120,
        colors: true,
        printEmojis: true,
      ),
      level: level,
    );
  }

  /// Dynamically change the logging level (e.g., Level.info, Level.error)
  static void setLogLevel(Level level) {
    _logger = _createLogger(level);
  }

  /// Log a debug message with optional data
  static void debug(String message, [dynamic data]) {
    _logger.d(_formatMessage(message, data));
  }

  /// Log an info message with optional data
  static void info(String message, [dynamic data]) {
    _logger.i(_formatMessage(message, data));
  }

  /// Log a warning message with optional data
  static void warning(String message, [dynamic data]) {
    _logger.w(_formatMessage(message, data));
  }

  /// Log an error message, optionally including error and stack trace
  static void error(String message, {dynamic error, StackTrace? stackTrace}) {
    _logger.e(message, error: error, stackTrace: stackTrace ?? StackTrace.current);
  }

  /// Log a verbose message with optional data
  static void verbose(String message, [dynamic data]) {
    _logger.v(_formatMessage(message, data));
  }

  /// Log a 'what a terrible failure' (WTF) message with optional data
  static void wtf(String message, [dynamic data]) {
    _logger.wtf(_formatMessage(message, data));
  }

  /// Format the log message to include additional data, if provided
  static String _formatMessage(String message, dynamic data) {
    return data != null ? '$message\nData: $data' : message;
  }
}
