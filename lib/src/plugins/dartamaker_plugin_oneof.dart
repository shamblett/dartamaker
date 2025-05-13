/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of '../../dartamaker.dart';

/// Oneof
class DartamakerPluginOneof implements DartamakerPlugin {
  List<String> _args = <String>['NoneSet', 'NoneSet'];

  /// Default
  DartamakerPluginOneof(String? args) {
    if (args != null) {
      _args = args.split(' ');
    }
  }

  @override
  String apply() => _args[Random().nextInt(_args.length - 1)];
}
