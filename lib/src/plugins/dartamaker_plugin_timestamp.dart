/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

// ignore_for_file: unnecessary_final
// ignore_for_file: omit_local_variable_types

/// ISO Time
class DartamakerPluginTimestamp implements DartamakerPlugin {
  @override
  String apply() {
    final DateTime now = DateTime.now();
    final int r =
        (Random().nextDouble() * 100).round() * now.millisecondsSinceEpoch;
    return r.toString();
  }
}
