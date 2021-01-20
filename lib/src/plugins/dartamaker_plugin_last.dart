/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

/// Last tag value
class DartamakerPluginLast implements DartamakerPlugin {
  /// Default
  DartamakerPluginLast(this._value);

  final String? _value;

  @override
  String? apply() => _value;
}
