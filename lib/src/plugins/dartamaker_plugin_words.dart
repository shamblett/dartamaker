/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of '../../dartamaker.dart';

/// Words
class DartamakerPluginWords implements DartamakerPlugin {
  int _count = 5;

  /// Default
  DartamakerPluginWords(String? count) {
    if (count != null) {
      final val = int.tryParse(count);
      if (val != null && val > 0) {
        _count = val;
      }
    }
  }

  @override
  String apply() {
    final words = List<String?>.filled(_count, '');
    for (var i = 0; i < _count; i++) {
      words[i] = DartamakerPluginWord().apply();
    }
    return words.join(' ');
  }
}
