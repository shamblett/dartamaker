/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

/// Cat names
class DartamakerPluginCat implements DartamakerPlugin {
  // ignore: unnecessary_final
  final List<String> _cats = <String>[
    'Tigger',
    'Chloe',
    'Shadow',
    'Luna',
    'Oreo',
    'Oliver',
    'Kitty',
    'Lucy',
    'Molly',
    'Jasper',
    'Smokey',
    'Gizmo',
    'Simba',
    'Tiger',
    'Charlie',
    'Angel',
    'Jack',
    'Lily',
    'Peanut',
    'Toby',
    'Baby',
    'Loki',
    'Midnight',
    'Milo',
    'Princess',
    'Sophie',
    'Harley',
    'Max',
    'Missy',
    'Rocky',
    'Zoe',
    'CoCo',
    'Misty',
    'Nala',
    'Oscar',
    'Pepper',
    'Sasha',
    'Buddy',
    'Pumpkin',
    'Kiki',
    'mittens',
    'bailey',
    'Callie',
    'Lucky',
    'Patches',
    'Simon',
    'Garfield',
    'George',
    'Maggie',
    'Sammy',
    'Sebastian',
    'Boots',
    'Cali',
    'Felix',
    'Lilly',
    'Phoebe',
    'Sassy',
    'tucker',
    'bandit',
    'Dexter',
    'Fiona',
    'Jake',
    'Precious',
    'Romeo',
    'Snickers',
    'Socks',
    'Daisy',
    'Gracie',
    'Lola',
    'Sadie',
    'sox',
    'Casper',
    'Fluffy',
    'Marley',
    'minnie',
    'Sweetie',
    'Ziggy',
    'Belle',
    'Blackie',
    'Chester',
    'Frankie',
    'Ginger',
    'Muffin',
    'Murphy',
    'Rusty',
    'Scooter',
    'BatMan',
    'boo',
    'Cleo',
    'Izzy',
    'Jasmine',
    'MIMI',
    'SUGAR',
    'cupcake',
    'Dusty',
    'Leo',
    'Noodle',
    'Panda',
    'Peaches'
  ];

  /// Cats list
  List<String> get cats => _cats;

  @override
  String apply() => _cats[Random().nextInt(_cats.length - 1)];
}
