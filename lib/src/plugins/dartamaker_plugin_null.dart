/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of '../../dartamaker.dart';

/// Default null plugin for null safety
class DartamakerPluginNull implements DartamakerPlugin {
  @override
  String apply() => 'Null plugin - error';
}
