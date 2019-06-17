/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

/// Letters
class DartamakerPluginUuid implements DartamakerPlugin {
  /// Default
  DartamakerPluginUuid(String length) {
    if (length != null) {
      final int val = int.tryParse(length);
      if (val != null && val > 0) {
        _length = val;
      }
    }
  }

  List<String> _anums = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z',
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

  /// Alpha numerics
  List<String> get anums => _anums;

  int _length = 16;

  @override
  String apply() {
    final StringBuffer str = StringBuffer();
    for (int i = 0; i < _length; i++) {
      str.write(_anums[Random().nextInt(_anums.length - 1)]);
    }
    return str.toString();
  }
}