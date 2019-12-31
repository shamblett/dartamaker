/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

// ignore_for_file: unnecessary_final
// ignore_for_file: omit_local_variable_types

/// Last tag value
class DartamakerPluginLast implements DartamakerPlugin {
  /// Default
  DartamakerPluginLast(this._value);

  final String _value;

  @override
  String apply() => _value;
}
