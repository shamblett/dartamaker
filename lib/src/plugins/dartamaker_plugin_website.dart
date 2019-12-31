/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

// ignore_for_file: unnecessary_final
// ignore_for_file: omit_local_variable_types

/// Website
class DartamakerPluginWebsite implements DartamakerPlugin {
  final List<String> _roots = <String>[
    'http://',
    'https://',
    'http://www.',
    'https://www.'
  ];

  /// Roots
  List<String> get roots => _roots;

  @override
  String apply() => '${_roots[Random().nextInt(_roots.length - 1)]}'
      '${DartamakerPluginDomainname().apply()}';
}
