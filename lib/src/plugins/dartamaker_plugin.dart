/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of '../../dartamaker.dart';

/// The abstract base class for formatter plugins
abstract class DartamakerPlugin {
  /// Apply method, return the generated string
  String? apply();
}
