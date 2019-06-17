/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */
import 'dart:async';
import 'dart:convert';
import 'dart:io';
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
  test('Counties', () {
    final DartamakerPluginCounty county =
        Dartamaker().plugin(DartamakerTagNames.county, null);
    final List<String> counties = county.counties;
    final String a1 = county.apply();
    expect(a1, anyOf(counties));
  });
  test('Digits', () {
    final DartamakerPluginDigits b1 = Dartamaker()
        .plugin(DartamakerTagNames.digits, DartamakerConstants.pluginNullParam);
    expect(b1.apply().length, 5);
    final Map<String, String> p1 = <String, String>{
      DartamakerConstants.numdigits: '20'
    };
    final DartamakerPluginDigits b2 =
        Dartamaker().plugin(DartamakerTagNames.digits, p1);
    expect(b2.apply().length, 20);
  });
  test('Credit card', () {
    final DartamakerPluginCreditcard card =
        Dartamaker().plugin(DartamakerTagNames.creditcard, null);
    for (int i = 0; i <= 9; i++) {
      final String number = card.apply();
      expect(number.length, 16);
      bool ok = false;
      for (String prefix in card.numbers) {
        if (number.startsWith(prefix)) {
          ok = true;
        }
      }
      expect(ok, isTrue);
    }
  });
  test('Dogs', () {
    final DartamakerPluginDog dog =
        Dartamaker().plugin(DartamakerTagNames.dog, null);
    final List<String> dogs = dog.dogs;
    final String a1 = dog.apply();
    expect(a1, anyOf(dogs));
  });
  test('TLDs', () {
    final DartamakerPluginTLD tld =
        Dartamaker().plugin(DartamakerTagNames.tld, null);
    final List<String> tlds = tld.tlds;
    final String a1 = tld.apply();
    expect(a1, anyOf(tlds));
  });
  test('Domain Name', () {
    final DartamakerPluginDomainname dn =
        Dartamaker().plugin(DartamakerTagNames.domainname, null);
    for (int i = 0; i <= 9; i++) {
      final String name = dn.apply();
      expect(name.isNotEmpty, isTrue);
    }
  });
  test('First Names', () {
    final DartamakerPluginFirstname name =
        Dartamaker().plugin(DartamakerTagNames.firstname, null);
    final List<String> names = name.names;
    final String a1 = name.apply();
    expect(a1, anyOf(names));
  });
  test('Surnames', () {
    final DartamakerPluginSurname name =
        Dartamaker().plugin(DartamakerTagNames.surname, null);
    final List<String> names = name.names;
    final String a1 = name.apply();
    expect(a1, anyOf(names));
  });
  test('Email', () {
    final DartamakerPluginEmail email =
        Dartamaker().plugin(DartamakerTagNames.email, null);
    for (int i = 0; i <= 9; i++) {
      final String name = email.apply();
      expect(name.isNotEmpty, isTrue);
      expect(name.contains('@'), isTrue);
    }
  });
  test('Emojii', () {
    final DartamakerPluginEmojii b1 = Dartamaker()
        .plugin(DartamakerTagNames.emojii, DartamakerConstants.pluginNullParam);
    expect(b1.apply().isNotEmpty, isTrue);
    final Map<String, String> p1 = <String, String>{
      DartamakerConstants.numchars: '20'
    };
    final DartamakerPluginEmojii b2 =
        Dartamaker().plugin(DartamakerTagNames.emojii, p1);
    expect(b2.apply().isNotEmpty, isTrue);
  });
  test('Float', () {
    final DartamakerPluginFloat b1 = Dartamaker()
        .plugin(DartamakerTagNames.float, DartamakerConstants.pluginNullParam);
    String res = b1.apply();
    double val = double.tryParse(res);
    expect(val >= 0.0, isTrue);
    expect(val <= 100.0, isTrue);
    expect(res.split('.')[1].length, 4);

    final DartamakerPluginFloat b2 =
        Dartamaker().plugin(DartamakerTagNames.float, <String, String>{
      DartamakerConstants.min: '1000.0',
      DartamakerConstants.max: '2000.0',
      DartamakerConstants.decimalplaces: '6'
    });
    res = b2.apply();
    val = double.tryParse(res);
    expect(val >= 1000.0, isTrue);
    expect(val <= 2000.0, isTrue);
    expect(res.split('.')[1].length, 6);
  });
  test('Integer', () {
    final DartamakerPluginInteger b1 = Dartamaker().plugin(
        DartamakerTagNames.integer, DartamakerConstants.pluginNullParam);
    String res = b1.apply();
    int val = int.tryParse(res);
    expect(val >= 0, isTrue);
    expect(val <= 100, isTrue);

    final DartamakerPluginInteger b2 = Dartamaker().plugin(
        DartamakerTagNames.integer, <String, String>{
      DartamakerConstants.min: '1000',
      DartamakerConstants.max: '2000'
    });
    res = b2.apply();
    val = int.tryParse(res);
    expect(val >= 1000, isTrue);
    expect(val <= 2000, isTrue);
  });
  test('Currency', () {
    final DartamakerPluginCurrency currency =
        Dartamaker().plugin(DartamakerTagNames.currency, null);
    final List<String> currencies = currency.currencies;
    final String a1 = currency.apply();
    expect(a1, anyOf(currencies));
  });
  test('Date ISO', () async {
    final DateTime now = DateTime.now();
    await Future<void>.delayed(const Duration(seconds: 1), () {});
    final DartamakerPluginDateiso b1 = Dartamaker().plugin(
        DartamakerTagNames.dateiso, DartamakerConstants.pluginNullParam);
    String res = b1.apply();
    DateTime val = DateTime.tryParse(res);
    expect(val.millisecondsSinceEpoch > now.millisecondsSinceEpoch, isTrue);

    const String tmin = '2012-02-26 13:27:00';
    const String tmax = '2012-02-28 13:27:00';
    final DartamakerPluginDateiso b2 = Dartamaker().plugin(
        DartamakerTagNames.dateiso, <String, String>{
      DartamakerConstants.min: tmin,
      DartamakerConstants.max: tmax
    });
    res = b2.apply();
    val = DateTime.tryParse(res);
    expect(
        DateTime.tryParse(res).millisecondsSinceEpoch >=
            DateTime.tryParse(tmin).millisecondsSinceEpoch,
        isTrue);
    expect(
        DateTime.tryParse(res).millisecondsSinceEpoch <=
            DateTime.tryParse(tmax).millisecondsSinceEpoch,
        isTrue);
  });
  test('Date', () {
    final DartamakerPluginDate b1 = Dartamaker()
        .plugin(DartamakerTagNames.date, DartamakerConstants.pluginNullParam);
    final String res = b1.apply();
    expect(res.contains('T'), isFalse);
    expect(res.contains(':'), isFalse);
    expect(res.contains('-'), isTrue);
  });
  test('Latitude', () {
    final DartamakerPluginLatitude b1 = Dartamaker().plugin(
        DartamakerTagNames.latitude, DartamakerConstants.pluginNullParam);
    final String res = b1.apply();
    final double val = double.tryParse(res);
    expect(val >= -90.0, isTrue);
    expect(val <= 90.0, isTrue);
  });
  test('Longitude', () {
    final DartamakerPluginLongitude b1 = Dartamaker().plugin(
        DartamakerTagNames.longitude, DartamakerConstants.pluginNullParam);
    final String res = b1.apply();
    final double val = double.tryParse(res);
    expect(val >= -180.0, isTrue);
    expect(val <= 180.0, isTrue);
  });
  test('Letters', () {
    final DartamakerPluginLetters b1 = Dartamaker().plugin(
        DartamakerTagNames.letters, DartamakerConstants.pluginNullParam);
    expect(b1.apply().length, 5);
    final Map<String, String> p1 = <String, String>{
      DartamakerConstants.numletters: '20'
    };
    final DartamakerPluginLetters b2 =
        Dartamaker().plugin(DartamakerTagNames.letters, p1);
    final String res = b2.apply();
    expect(res.length, 20);
  });
  test('Names', () {
    final DartamakerPluginName name =
        Dartamaker().plugin(DartamakerTagNames.name, null);
    final List<String> firstnames = DartamakerPluginFirstname().names;
    final List<String> surnames = DartamakerPluginSurname().names;
    final String a1 = name.apply();
    expect(a1.split(' ')[0], anyOf(firstnames));
    expect(a1.split(' ')[1], anyOf(surnames));
  });
  test('Normal', () {
    final DartamakerPluginNormal b1 = Dartamaker()
        .plugin(DartamakerTagNames.normal, DartamakerConstants.pluginNullParam);
    String res = b1.apply();
    expect(res.isNotEmpty, isTrue);
    expect(res.split('.')[1].length, 4);

    final DartamakerPluginNormal b2 =
        Dartamaker().plugin(DartamakerTagNames.normal, <String, String>{
      DartamakerConstants.mean: '20000',
      DartamakerConstants.stddev: '1000',
      DartamakerConstants.decimalplaces: '2'
    });
    res = b2.apply();
    expect(res.isNotEmpty, isTrue);
    expect(res.split('.')[1].length, 2);
  });
  test('One of', () {
    final DartamakerPluginOneof name = Dartamaker()
        .plugin(DartamakerTagNames.oneof, DartamakerConstants.pluginNullParam);
    final String a1 = name.apply();
    expect(a1, 'NoneSet');
    const String names = 'Gryffindor Hufflepuff Ravenclaw Slytherin';
    final DartamakerPluginOneof b2 = Dartamaker().plugin(
        DartamakerTagNames.oneof,
        <String, String>{DartamakerConstants.args: names});
    final String a2 = b2.apply();
    expect(names.contains(a2), isTrue);
  });
  test('Postcode', () {
    final DartamakerPluginPostcode code =
        Dartamaker().plugin(DartamakerTagNames.postcode, null);
    final String a1 = code.apply();
    expect(a1.isNotEmpty, isTrue);
    expect(a1.split(' ')[0].length, anyOf(3, 4));
    expect(a1.split(' ')[1].length, 3);
  });
  test('Price', () {
    final DartamakerPluginPrice b1 = Dartamaker()
        .plugin(DartamakerTagNames.price, DartamakerConstants.pluginNullParam);
    String res = b1.apply();
    expect(int.tryParse(res) >= 1, isTrue);
    expect(int.tryParse(res) <= 100, isTrue);
    final DartamakerPluginPrice b2 = Dartamaker().plugin(
        DartamakerTagNames.price, <String, String>{
      DartamakerConstants.max: '1000.0',
      DartamakerConstants.min: '500.0'
    });
    res = b2.apply();
    expect(int.tryParse(res) >= 500, isTrue);
    expect(int.tryParse(res) <= 1000, isTrue);
  });
  test('States', () {
    final DartamakerPluginState state =
        Dartamaker().plugin(DartamakerTagNames.state, null);
    final List<String> states = state.states;
    final String a1 = state.apply();
    expect(a1, anyOf(states));
  });
  test('State Codes', () {
    final DartamakerPluginStatecode statecode =
        Dartamaker().plugin(DartamakerTagNames.statecode, null);
    final List<String> statecodes = statecode.statecodes;
    final String a1 = statecode.apply();
    expect(a1, anyOf(statecodes));
  });
  test('Streets', () {
    final DartamakerPluginStreet street =
        Dartamaker().plugin(DartamakerTagNames.street, null);
    final List<String> streets = street.streets;
    final String a1 = street.apply();
    expect(a1, anyOf(streets));
  });
  test('Telephone numbers', () {
    final DartamakerPluginTel tel =
        Dartamaker().plugin(DartamakerTagNames.tel, null);
    final List<String> codes = tel.codes;
    final String a1 = tel.apply();
    final List<String> parts = a1.split('-');
    expect(parts.length, 4);
    expect(parts[0].startsWith('+'), isTrue);
    expect(parts[0].length, anyOf(3, 4));
    expect(parts[0].substring(1), anyOf(codes));
    expect(parts[1].length, 4);
    expect(parts[2].length, 3);
    expect(parts[3].length, 3);
    print(a1);
  });
  test('Time', () {
    final DartamakerPluginTime t =
        Dartamaker().plugin(DartamakerTagNames.time, null);
    final String a1 = t.apply();
    final List<String> parts = a1.split(':');
    expect(parts.length, 3);
  });
  test('Timestamp', () {
    final DartamakerPluginTimestamp t =
        Dartamaker().plugin(DartamakerTagNames.timestamp, null);
    final String a1 = t.apply();
    expect(a1.length, 15);
  });
  test('Titles', () {
    final DartamakerPluginTitle title =
        Dartamaker().plugin(DartamakerTagNames.title, null);
    final List<String> titles = title.titles;
    final String a1 = title.apply();
    expect(a1, anyOf(titles));
  });
  test('Towns', () {
    final DartamakerPluginTown town =
        Dartamaker().plugin(DartamakerTagNames.town, null);
    final List<String> towns = town.towns;
    final String a1 = town.apply();
    expect(a1, anyOf(towns));
  });
  test('Uuids', () {
    final DartamakerPluginUuid b1 = Dartamaker()
        .plugin(DartamakerTagNames.uuid, DartamakerConstants.pluginNullParam);
    expect(b1.apply().length, 16);
    final Map<String, String> p1 = <String, String>{
      DartamakerConstants.length: '30'
    };
    final DartamakerPluginUuid b2 =
        Dartamaker().plugin(DartamakerTagNames.uuid, p1);
    final String res = b2.apply();
    expect(res.length, 30);
  });
  test('Websites', () {
    final DartamakerPluginWebsite ws =
        Dartamaker().plugin(DartamakerTagNames.website, null);
    final String a1 = ws.apply();
    expect(a1.startsWith('http'), isTrue);
  });
  test('Urls', () {
    final DartamakerPluginUrl url =
        Dartamaker().plugin(DartamakerTagNames.url, null);
    final String a1 = url.apply();
    expect(a1.startsWith('http'), isTrue);
  });
  test('Words', () {
    final DartamakerPluginWords words = Dartamaker()
        .plugin(DartamakerTagNames.words, DartamakerConstants.pluginNullParam);
    String a1 = words.apply();
    expect(a1.split(' ').length, 5);
    final DartamakerPluginWords words1 = Dartamaker().plugin(
        DartamakerTagNames.words,
        <String, String>{DartamakerConstants.count: '20'});
    a1 = words1.apply();
    expect(a1.split(' ').length, 20);
  });
}
