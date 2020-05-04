/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

/// Package wide constants
class DartamakerConstants {
  /// Plugin parameters

  /// Boolean
  static const String probability = 'probability';

  /// Digits
  static const String numdigits = 'numdigits';

  /// Emojii's
  static const String numchars = 'numchars';

  /// Float, Integer, Date, Normal, Price
  static const String min = 'min';
  static const String max = 'max';
  static const String decimalplaces = 'decimalplaces';
  static const String mean = 'mean';
  static const String stddev = 'stddev';

  /// Letters
  static const String numletters = 'numletters';

  /// Oneof
  static const String args = 'args';

  /// Uuid
  static const String length = 'length';

  /// Words
  static const String count = 'count';

  /// Last
  static const String name = 'name';

  /// Plugin null parameter
  static Map<String, String> pluginNullParam = <String, String>{};

  /// Tag descriptor
  static const String original = 'original';
  static const String tag = 'tag';
  static const String params = 'params';
}
