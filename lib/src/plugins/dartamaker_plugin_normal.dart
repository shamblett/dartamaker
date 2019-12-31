/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

// ignore_for_file: unnecessary_final
// ignore_for_file: omit_local_variable_types

/// Normal
class DartamakerPluginNormal implements DartamakerPlugin {
  /// Default
  DartamakerPluginNormal(String mean, String stddev, String decimalplaces) {
    if (mean != null) {
      final int val = int.tryParse(mean);
      if (val != null && val > 0) {
        _mean = val;
      }
    }

    if (stddev != null) {
      final int val = int.tryParse(stddev);
      if (val != null && val > 0) {
        _stddev = val;
      }
    }

    if (decimalplaces != null) {
      final int val = int.tryParse(decimalplaces);
      if (val != null && val > 0) {
        _decimalplaces = val;
      }
    }
  }

  double _sample(int mu, int sigma) {
    final double u1 = Random().nextDouble();
    final double u2 = Random().nextDouble();
    final double z0 = sqrt(-2.0 * log(u1)) * cos(2 * pi * u2);
    return z0 * sigma + mu;
  }

  int _mean = 50;
  int _stddev = 1;
  int _decimalplaces = 4;

  @override
  String apply() => _sample(_mean, _stddev).toStringAsFixed(_decimalplaces);
}
