/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of '../../dartamaker.dart';

/// Formatter manager
class DartamakerFormatterManager {
  /// Get a formatter by tag name
  DartamakerFormatter? formatter(DartamakerFormatterTypes? type) {
    DartamakerFormatter? formatter;
    switch (type) {
      case DartamakerFormatterTypes.csv:
        formatter = DartamakerFormatterCSV();
        break;
      case DartamakerFormatterTypes.json:
        formatter = DartamakerFormatterJson();
        break;
      case DartamakerFormatterTypes.none:
        formatter = DartamakerFormatterNone();
        break;
      case DartamakerFormatterTypes.xml:
        formatter = DartamakerFormatterXml();
        break;
      case null:
        formatter = DartamakerFormatterNone();
        break;
    }

    return formatter;
  }
}
