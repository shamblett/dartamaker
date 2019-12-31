/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

// ignore_for_file: unnecessary_final
// ignore_for_file: omit_local_variable_types

/// ISO dates
class DartamakerPluginDate implements DartamakerPlugin {
  /// Default
  DartamakerPluginDate(this._min, this._max);

  final String _min;
  final String _max;

  @override
  String apply() => DartamakerPluginDateiso(_min, _max).apply().split('T')[0];
}
