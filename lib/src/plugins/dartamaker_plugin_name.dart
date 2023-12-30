/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of '../../dartamaker.dart';

/// Names
class DartamakerPluginName implements DartamakerPlugin {
  @override
  String apply() => '${DartamakerPluginFirstname().apply()}'
      ' ${DartamakerPluginSurname().apply()}';
}
