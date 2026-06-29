import 'package:core_common/src/pretty_log_printer.dart';
import 'package:logger/logger.dart';

/// App-wide logger.
///
/// [DevelopmentFilter] suppresses all output in release/profile builds, so
/// logs only appear during debugging and never leak to production.
final logger = Logger(
  filter: DevelopmentFilter(),
  printer: PrettyLogPrinter(),
);