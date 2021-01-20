/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

/// Price
class DartamakerPluginPrice implements DartamakerPlugin {
  /// Default
  DartamakerPluginPrice(String? min, String? max) {
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
  }

  double _min = 1;
  double _max = 100;

  @override
  String apply() {
    final min = (_min.round() * 100).toString();
    final max = (_max.round() * 100).toString();
    final res = DartamakerPluginInteger(min, max).apply();
    return (int.tryParse(res)! / 100).round().toString();
  }
}
