/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */
import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:dartamaker/dartamaker.dart';
import 'package:test/test.dart';

void main() {
  test('Airports', () {
    final DartamakerPluginAirport airport =
        Dartamaker().plugin(DartamakerTagNames.airport, null);
    final List<String> airports = airport.airports;
    final String a1 = airport.apply();
    expect(airports.contains(a1), isTrue);
    final String a2 = airport.apply();
    expect(airports.contains(a2), isTrue);
    final String a3 = airport.apply();
    expect(airports.contains(a3), isTrue);
  });
  test('Auto Increment', () {
    final DartamakerPluginAutoinc autoinc =
        Dartamaker().plugin(DartamakerTagNames.autoinc, null);
    expect(autoinc.apply(), '1');
    expect(autoinc.apply(), '2');
    expect(autoinc.apply(), '3');
    expect(autoinc.apply(), '4');
  });
  test('Boolean', () {
    final DartamakerPluginBoolean b1 = Dartamaker().plugin(
        DartamakerTagNames.boolean, DartamakerConstants.pluginNullParam);
    expect(b1.apply(), anyOf('true', 'false'));
    final Map<String, String> p1 = <String, String>{
      DartamakerConstants.probability: '1.0'
    };
    final DartamakerPluginBoolean b2 =
        Dartamaker().plugin(DartamakerTagNames.boolean, p1);
    expect(b2.apply(), 'true');
    final Map<String, String> p2 = <String, String>{
      DartamakerConstants.probability: '0.0'
    };
    final DartamakerPluginBoolean b3 =
        Dartamaker().plugin(DartamakerTagNames.boolean, p2);
    expect(b3.apply(), 'false');
    final Map<String, String> p3 = <String, String>{
      DartamakerConstants.probability: Random().nextDouble().toString()
    };
    final DartamakerPluginBoolean b4 =
        Dartamaker().plugin(DartamakerTagNames.boolean, p3);
    expect(b4.apply(), anyOf('true', 'false'));
  });
}
