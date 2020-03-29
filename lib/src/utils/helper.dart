import 'package:logger/logger.dart';

class Helper {
  static var logger = Logger();

  static printLogValue(dynamic value) {
    logger.d(value);
  }
}
