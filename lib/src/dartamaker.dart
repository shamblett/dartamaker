/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

/// The main dartamaker class
class Dartamaker {
  DartamakerPluginAutoinc _autoinc = DartamakerPluginAutoinc();

  /// Airport
  DartamakerPluginAirport get airport => DartamakerPluginAirport();

  /// Auto increment
  DartamakerPluginAutoinc get autoinc => _autoinc;

  /// Boolean
  DartamakerPluginBoolean boolean(String probability) =>
      DartamakerPluginBoolean.withProbability(probability);
}
