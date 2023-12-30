/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of '../../dartamaker.dart';

/// ISO Time
class DartamakerPluginTimestamp implements DartamakerPlugin {
  @override
  String apply() {
    final now = DateTime.now();
    final r =
        (Random().nextDouble() * 100).round() * now.millisecondsSinceEpoch;
    return r.toString();
  }
}
