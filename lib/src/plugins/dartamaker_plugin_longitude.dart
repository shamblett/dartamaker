/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of '../../dartamaker.dart';

/// Longitude
class DartamakerPluginLongitude implements DartamakerPlugin {
  @override
  String apply() => DartamakerPluginFloat('-180.0', '180.0', '4').apply();
}
