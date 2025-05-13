/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of '../../dartamaker.dart';

/// Dog names
class DartamakerPluginDog implements DartamakerPlugin {
  final List<String> _dogs = <String>[
    'Stella',
    'Roxy',
    'Lexi',
    'Ruby',
    'Rosie',
    'Sasha',
    'Marley',
    'Penny',
    'Ellie',
    'Lilly',
    'Ginger',
    'Emma',
    'Nala',
    'Mia',
    'Charlie',
    'Max',
    'Bailey',
    'Buddy',
    'Cooper',
    'Jack',
    'Oliver',
    'Riley',
    'Tucker',
    'Rocky',
    'Teddy',
    'Bentley',
    'Jake',
    'Bear',
    'Gus',
    'Duke',
    'Murphy',
    'Harley',
    'Henry',
    'Leo',
    'Dexter',
    'Zeus',
    'Lucky',
    'Milo',
    'Apollo',
    'Jax',
    'Scout',
    'Shadow',
    'Sam',
    'Cody',
    'Gregg',
  ];

  /// Dogs list
  List<String> get dogs => _dogs;

  @override
  String apply() => _dogs[Random().nextInt(_dogs.length - 1)];
}
