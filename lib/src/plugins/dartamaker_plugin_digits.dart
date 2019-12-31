/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

// ignore_for_file: unnecessary_final
// ignore_for_file: omit_local_variable_types

/// String of digits
class DartamakerPluginDigits implements DartamakerPlugin {
  /// Default
  DartamakerPluginDigits(String numdigits) {
    if (numdigits != null) {
      final int val = int.tryParse(numdigits);
      if (val != null && val > 0) {
        _numdigits = val;
      }
    }
  }

  final List<String> _digits = <String>[
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9'
  ];

  int _numdigits = 5;

  /// Digits list
  List<String> get digits => _digits;

  @override
  String apply() {
    final StringBuffer str = StringBuffer();
    for (int i = 0; i < _numdigits; i++) {
      str.write(_digits[Random().nextInt(_digits.length - 1)]);
    }

    return str.toString();
  }
}
