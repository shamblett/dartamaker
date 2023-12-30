/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of '../../dartamaker.dart';

/// Latitude
class DartamakerPluginLatitude implements DartamakerPlugin {
  @override
  String apply() => DartamakerPluginFloat('-90.0', '90.0', '4').apply();
}
