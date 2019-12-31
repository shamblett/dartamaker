/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

// ignore_for_file: unnecessary_final
// ignore_for_file: omit_local_variable_types

/// Integer
class DartamakerPluginInteger implements DartamakerPlugin {
  /// Default
  DartamakerPluginInteger(String min, String max) {
    if (min != null) {
      final int val = int.tryParse(min);
      if (val != null && val > 0) {
        _min = val;
      }
    }

    if (max != null) {
      final int val = int.tryParse(max);
      if (val != null && val > 0.0) {
        _max = val;
      }
    }
  }

  int _min = 1;
  int _max = 100;

  @override
  String apply() => (_min + (Random().nextInt(_max - _min))).toString();
}
