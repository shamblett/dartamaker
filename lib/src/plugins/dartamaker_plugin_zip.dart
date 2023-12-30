/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of '../../dartamaker.dart';

/// Zip code
class DartamakerPluginZip implements DartamakerPlugin {
  @override
  String apply() => DartamakerPluginDigits('5').apply();
}
