/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of '../../dartamaker.dart';

/// Email
class DartamakerPluginEmail implements DartamakerPlugin {
  static const randomOffset = 0.5;

  final List<String> _options = <String>['.', '', '_', '-'];
  final List<String> _domains = <String>[
    'gmail.com',
    'hotmail.com',
    'yahoo.com',
  ];

  /// Options
  List<String> get options => _options;

  @override
  String apply() {
    String domain;
    domain =
        Random().nextDouble() > randomOffset
            ? _domains[Random().nextInt(_domains.length - 1)]
            : DartamakerPluginDomainname().apply();

    return '${DartamakerPluginFirstname().apply().toLowerCase()}'
        '${_options[Random().nextInt(_options.length - 1)]}'
        '${DartamakerPluginSurname().apply().toLowerCase()}@$domain';
  }
}
