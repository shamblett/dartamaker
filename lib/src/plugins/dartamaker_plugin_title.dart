/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of '../../dartamaker.dart';

/// Titles
class DartamakerPluginTitle implements DartamakerPlugin {
  final List<String> _titles = <String>[
    'Brother',
    'Cantor',
    'Capitaine',
    'Captain',
    'Cardinal',
    'Chaplain',
    'Councillor',
    'Dean',
    'Dr',
    'Elder',
    'Fr',
    'Frère',
    'Hon',
    'Imam',
    'M',
    'Madam',
    'Major',
    'Me',
    'Mère',
    'Miss',
    'Mlle',
    'Mme',
    'Mr',
    'Mrs',
    'Mx',
    'Officer',
    'Officier',
    'Pandit',
    'Pasteur',
    'Pastor',
    'Père',
    'Pr',
    'Prof',
    'Rabbi',
    'Rev',
    'Rev Dr',
    'Révérend',
    'Sergeant',
    'Sergent',
    'Sergent d\'état major',
    'Sir',
    'Sister',
    'Sœur',
    'Staff Sergeant',
  ];

  /// Titles
  List<String> get titles => _titles;

  @override
  String apply() => _titles[Random().nextInt(_titles.length - 1)];
}
