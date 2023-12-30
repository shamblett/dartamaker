/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of '../../dartamaker.dart';

/// ISO Time
class DartamakerPluginTime implements DartamakerPlugin {
  @override
  String apply() {
    final now = DateTime.now();
    final r =
        (Random().nextDouble() * 100).round() * now.millisecondsSinceEpoch;
    final d = DateTime.fromMillisecondsSinceEpoch(r).toIso8601String();
    final parts = d.split('T');
    return parts[1].split('.')[0];
  }
}
