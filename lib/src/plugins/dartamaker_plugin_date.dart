/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

/// ISO dates
class DartamakerPluginDate implements DartamakerPlugin {
  /// Default
  DartamakerPluginDate(this._min, this._max);

  String _min;
  String _max;

  @override
  String apply() => DartamakerPluginDateiso(_min, _max).apply().split('T')[0];
}
