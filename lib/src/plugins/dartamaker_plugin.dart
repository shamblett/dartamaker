/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

/// The abstract base class for formatter plugins
// ignore: one_member_abstracts
abstract class DartamakerPlugin {
  /// Apply method, return the generated string
  String apply();
}
