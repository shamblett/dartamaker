/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of '../../dartamaker.dart';

/// String of digits
class DartamakerPluginDigits implements DartamakerPlugin {
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
    '9',
  ];

  int _numdigits = 5;

  /// Digits list
  List<String> get digits => _digits;

  /// Default
  DartamakerPluginDigits(String? numdigits) {
    if (numdigits != null) {
      final val = int.tryParse(numdigits);
      if (val != null && val > 0) {
        _numdigits = val;
      }
    }
  }

  @override
  String apply() {
    final str = StringBuffer();
    for (var i = 0; i < _numdigits; i++) {
      str.write(_digits[Random().nextInt(_digits.length - 1)]);
    }

    return str.toString();
  }
}
