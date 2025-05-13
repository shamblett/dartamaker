/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of '../../dartamaker.dart';

/// ISO dates
class DartamakerPluginDate implements DartamakerPlugin {
  final String? _min;
  final String? _max;

  /// Default
  DartamakerPluginDate(this._min, this._max);

  @override
  String apply() =>
      DartamakerPluginDateiso(_min, _max).apply().split('T').first;
}
