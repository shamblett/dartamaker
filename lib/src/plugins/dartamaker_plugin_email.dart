/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of '../../dartamaker.dart';

/// Email
class DartamakerPluginEmail implements DartamakerPlugin {
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
    if (Random().nextDouble() > 0.5) {
      domain = _domains[Random().nextInt(_domains.length - 1)];
    } else {
      domain = DartamakerPluginDomainname().apply();
    }

    return '${DartamakerPluginFirstname().apply().toLowerCase()}'
        '${_options[Random().nextInt(_options.length - 1)]}'
        '${DartamakerPluginSurname().apply().toLowerCase()}@$domain';
  }
}
