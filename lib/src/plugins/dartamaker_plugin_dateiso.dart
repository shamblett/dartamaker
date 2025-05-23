/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of '../../dartamaker.dart';

/// ISO dates and times
class DartamakerPluginDateiso implements DartamakerPlugin {
  DateTime _min = DateTime.now();

  DateTime _max = DateTime.now();

  /// Default
  DartamakerPluginDateiso(String? min, String? max) {
    if (min != null) {
      final val = DateTime.tryParse(min);
      if (val != null) {
        _min = val;
      }
    }

    if (max != null) {
      final val = DateTime.tryParse(max);
      if (val != null) {
        _max = val;
      }
    }
  }

  @override
  String apply() =>
      DateTime.fromMillisecondsSinceEpoch(
        _min.millisecondsSinceEpoch +
            (Random().nextDouble() *
                    (_max.millisecondsSinceEpoch - _min.millisecondsSinceEpoch))
                .floor(),
      ).toIso8601String();
}
