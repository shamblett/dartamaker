/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

/// Credit card numbers
class DartamakerPluginCreditcard implements DartamakerPlugin {
  final List<String> _numbers = <String>[
    '4',
    '51',
    '52',
    '53',
    '54',
    '55',
    '36',
    '38',
    '6011',
    '65',
    '35',
    '34',
    '37'
  ];

  /// Numbers list
  List<String> get numbers => _numbers;

  @override
  String apply() {
    final String prefix = _numbers[Random().nextInt(_numbers.length - 1)];
    final int n = 16 - prefix.length;
    return prefix + DartamakerPluginDigits(n.toString()).apply();
  }
}
