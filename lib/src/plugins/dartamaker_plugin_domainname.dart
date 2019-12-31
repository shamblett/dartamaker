/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

// ignore_for_file: unnecessary_final
// ignore_for_file: omit_local_variable_types

/// Domain name
class DartamakerPluginDomainname implements DartamakerPlugin {
  @override
  String apply() {
    final StringBuffer t = StringBuffer();
    if (Random().nextDouble() > 0.2) {
      t.write('com');
    } else {
      t.write(DartamakerPluginTLD().apply().toLowerCase());
    }

    return '${DartamakerPluginWord().apply().toLowerCase()}.${t.toString()}';
  }
}
