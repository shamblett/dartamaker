/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

/// Cat names
class DartamakerPluginCompany implements DartamakerPlugin {
  final List<String> _middle = <String>[
    '',
    '',
    '',
    '',
    'Industries',
    'Software',
    'Energy',
    'Holdings',
    'International',
    'Stores',
    'Mutual'
  ];

  final List<String> _suffix = <String>[
    '',
    '',
    '',
    '',
    'Company',
    'Corporation',
    'Corp',
    'Inc',
    'LLC',
    'Ltd',
    'S.A',
    'A.G',
    'B.V',
    'GmbH',
    'SIA',
    'Pte. Ltd'
  ];

  final DartamakerPluginWord _word = DartamakerPluginWord();

  @override
  String apply() {
    final r1 = Random().nextInt(_middle.length - 1);
    final r2 = Random().nextInt(_suffix.length - 1);
    var w = _word.apply();
    w = w.substring(0, 1).toUpperCase() + w.substring(1);
    return "$w ${_middle[r1]} ${_suffix[r2].replaceAll(RegExp('/ {2}/g'), ' ')}";
  }
}
