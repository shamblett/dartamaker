/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

// ignore_for_file: unnecessary_final
// ignore_for_file: omit_local_variable_types

/// Url
class DartamakerPluginUrl implements DartamakerPlugin {
  final List<String> _endings = <String>['.html', '.php', '.aspx', ''];

  /// Endings
  List<String> get endings => _endings;

  @override
  String apply() {
    final int r = Random().nextInt(_endings.length - 1);
    String d =
        '${DartamakerPluginWebsite().apply()}/${DartamakerPluginWord().apply()}${_endings[r]}';
    if (Random().nextDouble() > 0.9) {
      d +=
          // ignore: lines_longer_than_80_chars
          '?${DartamakerPluginWord().apply()}=${DartamakerPluginUuid(null).apply()}';
      if (Random().nextDouble() > 0.5) {
        d +=
            // ignore: lines_longer_than_80_chars
            '&${DartamakerPluginWord().apply()}=${DartamakerPluginUuid(null).apply()}';
      }
    } else if (Random().nextDouble() < 0.9) {
      d += '#${DartamakerPluginWord().apply()}';
    }
    return d;
  }
}
