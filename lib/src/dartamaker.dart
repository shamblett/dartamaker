/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

/// The main dartamaker class
class Dartamaker {
  DartamakerPluginAirport _airport = DartamakerPluginAirport();
  DartamakerPluginAutoinc _autoinc = DartamakerPluginAutoinc();

  /// Airport
  DartamakerPluginAirport get airport => _airport;

  /// Auto increment
  DartamakerPluginAutoinc get autoinc => _autoinc;
}
