/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of '../../dartamaker.dart';

/// Last tag value
class DartamakerPluginLast implements DartamakerPlugin {
  final String? _value;

  /// Default
  DartamakerPluginLast(this._value);

  @override
  String? apply() => _value;
}
