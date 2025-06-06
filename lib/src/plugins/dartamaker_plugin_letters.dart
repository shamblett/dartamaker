/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of '../../dartamaker.dart';

/// Letters
class DartamakerPluginLetters implements DartamakerPlugin {
  final List<String> _letters = <String>[
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
  ];

  int _numletters = 5;

  /// Letters
  List<String> get letters => _letters;

  /// Default
  DartamakerPluginLetters(String? numletters) {
    if (numletters != null) {
      final val = int.tryParse(numletters);
      if (val != null && val > 0) {
        _numletters = val;
      }
    }
  }

  @override
  String apply() {
    final str = StringBuffer();
    for (var i = 0; i < _numletters; i++) {
      str.write(_letters[Random().nextInt(_letters.length - 1)]);
    }
    return str.toString();
  }
}
