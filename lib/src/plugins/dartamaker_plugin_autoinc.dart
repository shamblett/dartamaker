/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of '../../dartamaker.dart';

/// Auto increment
class DartamakerPluginAutoinc implements DartamakerPlugin {
  int _counter = 1;

  @override
  String apply() => (_counter++).toString();
}
