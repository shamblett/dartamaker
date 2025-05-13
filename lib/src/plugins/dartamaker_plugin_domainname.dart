/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of '../../dartamaker.dart';

/// Domain name
class DartamakerPluginDomainname implements DartamakerPlugin {
  static const randomOffset = 0.2;

  @override
  String apply() {
    final t = StringBuffer();
    if (Random().nextDouble() > randomOffset) {
      t.write('com');
    } else {
      t.write(DartamakerPluginTLD().apply().toLowerCase());
    }

    return '${DartamakerPluginWord().apply().toLowerCase()}.${t.toString()}';
  }
}
