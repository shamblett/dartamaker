/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of '../../dartamaker.dart';

/// Random boolean based on probability parameter
class DartamakerPluginBoolean implements DartamakerPlugin {
  double _probability = 0.5;

  /// The probability
  double get probability => _probability;

  /// Default, probability in the range 0.0 to 1.0
  DartamakerPluginBoolean(String? probability) {
    if (probability != null) {
      final p = double.tryParse(probability);
      if (p != null) {
        if (p >= 0.0 && p <= 1.0) {
          _probability = p;
        }
      }
    }
  }

  @override
  String apply() => Random().nextDouble() <= _probability ? 'true' : 'false';
}
