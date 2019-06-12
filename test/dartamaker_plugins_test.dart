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
    expect(a1, anyOf(airports));
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
  test('Cats', () {
    final DartamakerPluginCat cat =
        Dartamaker().plugin(DartamakerTagNames.cat, null);
    final List<String> cats = cat.cats;
    final String a1 = cat.apply();
    expect(a1, anyOf(cats));
  });
  test('Cities', () {
    final DartamakerPluginCity city =
        Dartamaker().plugin(DartamakerTagNames.city, null);
    final List<String> cities = city.cities;
    final String a1 = city.apply();
    expect(a1, anyOf(cities));
  });
  test('Words', () {
    final DartamakerPluginWord word =
        Dartamaker().plugin(DartamakerTagNames.word, null);
    final List<String> words = word.words;
    final String a1 = word.apply();
    expect(a1, anyOf(words));
  });
  test('Company', () {
    final DartamakerPluginCompany company =
        Dartamaker().plugin(DartamakerTagNames.company, null);
    for (int i = 0; i <= 9; i++) {
      final String name = company.apply();
      expect(name.isNotEmpty, isTrue);
      expect(name.substring(0, 1), name.substring(0, 1).toUpperCase());
    }
  });
  test('Countries', () {
    final DartamakerPluginCountry country =
        Dartamaker().plugin(DartamakerTagNames.country, null);
    final List<String> countries = country.countries;
    final String a1 = country.apply();
    expect(a1, anyOf(countries));
  });
}
