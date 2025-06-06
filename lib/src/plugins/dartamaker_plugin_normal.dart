// ignore_for_file: no-magic-number

/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of '../../dartamaker.dart';

/// Normal
class DartamakerPluginNormal implements DartamakerPlugin {
  int _mean = 50;

  int _stddev = 1;

  int _decimalplaces = 4;

  /// Default
  DartamakerPluginNormal(String? mean, String? stddev, String? decimalplaces) {
    if (mean != null) {
      final val = int.tryParse(mean);
      if (val != null && val > 0) {
        _mean = val;
      }
    }

    if (stddev != null) {
      final val = int.tryParse(stddev);
      if (val != null && val > 0) {
        _stddev = val;
      }
    }

    if (decimalplaces != null) {
      final val = int.tryParse(decimalplaces);
      if (val != null && val > 0) {
        _decimalplaces = val;
      }
    }
  }

  @override
  String apply() => _sample(_mean, _stddev).toStringAsFixed(_decimalplaces);

  double _sample(int mu, int sigma) {
    final u1 = Random().nextDouble();
    final u2 = Random().nextDouble();
    final z0 = sqrt(-2.0 * log(u1)) * cos(pi * u2 * 2);
    return z0 * sigma + mu;
  }
}
