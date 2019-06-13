/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

/// Oneof
class DartamakerPluginOneof implements DartamakerPlugin {
  /// Default
  DartamakerPluginOneof(String args) {
    if (args != null) {
      _args = args.split(' ');
    }
  }

  List<String> _args = <String>['NoneSet', 'NoneSet'];

  @override
  String apply() => _args[Random().nextInt(_args.length - 1)];
}
