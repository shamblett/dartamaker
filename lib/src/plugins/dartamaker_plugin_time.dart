/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

/// ISO Time
class DartamakerPluginTime implements DartamakerPlugin {
  @override
  String apply() {
    final DateTime now = DateTime.now();
    final int r =
        (Random().nextDouble() * 100).round() * now.millisecondsSinceEpoch;
    final String d = DateTime.fromMillisecondsSinceEpoch(r).toIso8601String();
    final List<String> parts = d.split('T');
    return parts[1].split('.')[0];
  }
}
