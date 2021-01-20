/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

/// Formatter
enum DartamakerFormatterTypes { none, csv, json, xml }

/// Formatter name support
class DartamakerFormattertype {
  /// From string
  static DartamakerFormatterTypes? fromString(String formatterType) {
    DartamakerFormatterTypes? ret;
    for (final type in DartamakerFormatterTypes.values) {
      if (formatterType == type.toString().split('.')[1]) {
        ret = type;
        break;
      }
    }
    return ret;
  }

  /// As string
  static String asString(DartamakerFormatterTypes type) =>
      type.toString().split('.')[1];

  /// As string list
  static List<String> asStringList() {
    final ret = <String>[];
    for (final type in DartamakerFormatterTypes.values) {
      ret.add(type.toString().split('.')[1]);
    }
    return ret;
  }
}
