/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

/// Float
class DartamakerPluginFloat implements DartamakerPlugin {
  /// Default
  DartamakerPluginFloat(String? min, String? max, String? decimalplaces) {
    if (min != null) {
      final val = double.tryParse(min);
      if (val != null && val > 0.0) {
        _min = val;
      }
    }

    if (max != null) {
      final val = double.tryParse(max);
      if (val != null && val > 0.0) {
        _max = val;
      }
    }

    if (decimalplaces != null) {
      final val = int.tryParse(decimalplaces);
      if (val != null && val > 0) {
        _decimalplaces = val;
      }
    }
  }

  double _min = 1;
  double _max = 100;
  int _decimalplaces = 4;

  @override
  String apply() => (_min + Random().nextDouble() * (_max - _min))
      .toStringAsFixed(_decimalplaces);
}
