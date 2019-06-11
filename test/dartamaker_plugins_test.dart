/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */
import 'dart:async';
import 'dart:convert';

import 'package:dartamaker/dartamaker.dart';
import 'package:test/test.dart';

void main() {
  test('Airports', () {
    final DartamakerPluginAirport airport = Dartamaker().airport;
    final List<String> airports = airport.airports;
    final String a1 = airport.apply();
    expect(airports.contains(a1), isTrue);
    final String a2 = airport.apply();
    expect(airports.contains(a2), isTrue);
    final String a3 = airport.apply();
    expect(airports.contains(a3), isTrue);
  });
  test('Auto Increment', () {
    final DartamakerPluginAutoinc autoinc = Dartamaker().autoinc;
    expect(autoinc.apply(), '1');
    expect(autoinc.apply(), '2');
    expect(autoinc.apply(), '3');
    expect(autoinc.apply(), '4');
  });
}
