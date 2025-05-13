/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of '../../dartamaker.dart';

/// Price
class DartamakerPluginPrice implements DartamakerPlugin {
  static const priceMultiplier = 100;

  double _min = 1;

  double _max = 100;

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

  @override
  String apply() {
    final min = (_min.round() * priceMultiplier).toString();
    final max = (_max.round() * priceMultiplier).toString();
    final res = DartamakerPluginInteger(min, max).apply();
    return (int.tryParse(res)! / priceMultiplier).round().toString();
  }
}
