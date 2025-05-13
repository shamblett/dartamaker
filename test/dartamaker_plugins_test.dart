/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */
import 'dart:async';
import 'dart:math';

import 'package:dartamaker/dartamaker.dart';
import 'package:test/test.dart';

void main() {
  group('Plugins', () {
    test('Airports', () {
      final airport =
          Dartamaker().plugin(DartamakerTagNames.airport, null)
              as DartamakerPluginAirport;
      final airports = airport.airports;
      final a1 = airport.apply();
      expect(a1, anyOf(airports));
    });
    test('Auto Increment', () {
      final autoinc =
          Dartamaker().plugin(DartamakerTagNames.autoinc, null)
              as DartamakerPluginAutoinc;
      expect(autoinc.apply(), '1');
      expect(autoinc.apply(), '2');
      expect(autoinc.apply(), '3');
      expect(autoinc.apply(), '4');
    });
    test('Boolean', () {
      final b1 =
          Dartamaker().plugin(
                DartamakerTagNames.boolean,
                DartamakerConstants.pluginNullParam,
              )
              as DartamakerPluginBoolean;
      expect(b1.apply(), anyOf('true', 'false'));
      final p1 = <String, String>{DartamakerConstants.probability: '1.0'};
      final b2 =
          Dartamaker().plugin(DartamakerTagNames.boolean, p1)
              as DartamakerPluginBoolean;
      expect(b2.apply(), 'true');
      final p2 = <String, String>{DartamakerConstants.probability: '0.0'};
      final b3 =
          Dartamaker().plugin(DartamakerTagNames.boolean, p2)
              as DartamakerPluginBoolean;
      expect(b3.apply(), 'false');
      final p3 = <String, String>{
        DartamakerConstants.probability: Random().nextDouble().toString(),
      };
      final b4 =
          Dartamaker().plugin(DartamakerTagNames.boolean, p3)
              as DartamakerPluginBoolean;
      expect(b4.apply(), anyOf('true', 'false'));
    });
    test('Cats', () {
      final cat =
          Dartamaker().plugin(DartamakerTagNames.cat, null)
              as DartamakerPluginCat;
      final cats = cat.cats;
      final a1 = cat.apply();
      expect(a1, anyOf(cats));
    });
    test('Cities', () {
      final city =
          Dartamaker().plugin(DartamakerTagNames.city, null)
              as DartamakerPluginCity;
      final cities = city.cities;
      final a1 = city.apply();
      expect(a1, anyOf(cities));
    });
    test('Words', () {
      final word =
          Dartamaker().plugin(DartamakerTagNames.word, null)
              as DartamakerPluginWord;
      final words = word.words;
      final a1 = word.apply();
      expect(a1, anyOf(words));
    });
    test('Company', () {
      final company =
          Dartamaker().plugin(DartamakerTagNames.company, null)
              as DartamakerPluginCompany?;
      for (var i = 0; i <= 9; i++) {
        final name = company!.apply();
        expect(name.isNotEmpty, isTrue);
        expect(name.substring(0, 1), name.substring(0, 1).toUpperCase());
      }
    });
    test('Countries', () {
      final country =
          Dartamaker().plugin(DartamakerTagNames.country, null)
              as DartamakerPluginCountry;
      final countries = country.countries;
      final a1 = country.apply();
      expect(a1, anyOf(countries));
    });
    test('Counties', () {
      final county =
          Dartamaker().plugin(DartamakerTagNames.county, null)
              as DartamakerPluginCounty;
      final counties = county.counties;
      final a1 = county.apply();
      expect(a1, anyOf(counties));
    });
    test('Digits', () {
      final b1 =
          Dartamaker().plugin(
                DartamakerTagNames.digits,
                DartamakerConstants.pluginNullParam,
              )
              as DartamakerPluginDigits;
      expect(b1.apply().length, 5);
      final p1 = <String, String>{DartamakerConstants.numdigits: '20'};
      final b2 =
          Dartamaker().plugin(DartamakerTagNames.digits, p1)
              as DartamakerPluginDigits;
      expect(b2.apply().length, 20);
    });
    test('Credit card', () {
      final card =
          Dartamaker().plugin(DartamakerTagNames.creditcard, null)
              as DartamakerPluginCreditcard?;
      for (var i = 0; i <= 9; i++) {
        final number = card!.apply();
        expect(number.length, 16);
        var ok = false;
        for (final prefix in card.numbers) {
          if (number.startsWith(prefix)) {
            ok = true;
          }
        }
        expect(ok, isTrue);
      }
    });
    test('Dogs', () {
      final dog =
          Dartamaker().plugin(DartamakerTagNames.dog, null)
              as DartamakerPluginDog;
      final dogs = dog.dogs;
      final a1 = dog.apply();
      expect(a1, anyOf(dogs));
    });
    test('TLDs', () {
      final tld =
          Dartamaker().plugin(DartamakerTagNames.tld, null)
              as DartamakerPluginTLD;
      final tlds = tld.tlds;
      final a1 = tld.apply();
      expect(a1, anyOf(tlds));
    });
    test('Domain Name', () {
      final dn =
          Dartamaker().plugin(DartamakerTagNames.domainname, null)
              as DartamakerPluginDomainname?;
      for (var i = 0; i <= 9; i++) {
        final name = dn!.apply();
        expect(name.isNotEmpty, isTrue);
      }
    });
    test('First Names', () {
      final name =
          Dartamaker().plugin(DartamakerTagNames.firstname, null)
              as DartamakerPluginFirstname;
      final names = name.names;
      final a1 = name.apply();
      expect(a1, anyOf(names));
    });
    test('Surnames', () {
      final name =
          Dartamaker().plugin(DartamakerTagNames.surname, null)
              as DartamakerPluginSurname;
      final names = name.names;
      final a1 = name.apply();
      expect(a1, anyOf(names));
    });
    test('Email', () {
      final email =
          Dartamaker().plugin(DartamakerTagNames.email, null)
              as DartamakerPluginEmail?;
      for (var i = 0; i <= 9; i++) {
        final name = email!.apply();
        expect(name.isNotEmpty, isTrue);
        expect(name.contains('@'), isTrue);
      }
    });
    test('Emojii', () {
      final b1 =
          Dartamaker().plugin(
                DartamakerTagNames.emojii,
                DartamakerConstants.pluginNullParam,
              )
              as DartamakerPluginEmojii;
      expect(b1.apply().isNotEmpty, isTrue);
      final p1 = <String, String>{DartamakerConstants.numchars: '20'};
      final b2 =
          Dartamaker().plugin(DartamakerTagNames.emojii, p1)
              as DartamakerPluginEmojii;
      expect(b2.apply().isNotEmpty, isTrue);
    });
    test('Float', () {
      final b1 =
          Dartamaker().plugin(
                DartamakerTagNames.float,
                DartamakerConstants.pluginNullParam,
              )
              as DartamakerPluginFloat;
      var res = b1.apply();
      var val = double.tryParse(res)!;
      expect(val >= 0.0, isTrue);
      expect(val <= 100.0, isTrue);
      expect(res.split('.')[1].length, 4);

      final b2 =
          Dartamaker().plugin(DartamakerTagNames.float, <String, String>{
                DartamakerConstants.min: '1000.0',
                DartamakerConstants.max: '2000.0',
                DartamakerConstants.decimalplaces: '6',
              })
              as DartamakerPluginFloat;
      res = b2.apply();
      val = double.tryParse(res)!;
      expect(val >= 1000.0, isTrue);
      expect(val <= 2000.0, isTrue);
      expect(res.split('.')[1].length, 6);
    });
    test('Integer', () {
      final b1 =
          Dartamaker().plugin(
                DartamakerTagNames.integer,
                DartamakerConstants.pluginNullParam,
              )
              as DartamakerPluginInteger;
      var res = b1.apply();
      var val = int.tryParse(res)!;
      expect(val >= 0, isTrue);
      expect(val <= 100, isTrue);

      final b2 =
          Dartamaker().plugin(DartamakerTagNames.integer, <String, String>{
                DartamakerConstants.min: '1000',
                DartamakerConstants.max: '2000',
              })
              as DartamakerPluginInteger;
      res = b2.apply();
      val = int.tryParse(res)!;
      expect(val >= 1000, isTrue);
      expect(val <= 2000, isTrue);
    });
    test('Currency', () {
      final currency =
          Dartamaker().plugin(DartamakerTagNames.currency, null)
              as DartamakerPluginCurrency;
      final currencies = currency.currencies;
      final a1 = currency.apply();
      expect(a1, anyOf(currencies));
    });
    test('Date ISO', () async {
      final now = DateTime.now();
      await Future<void>.delayed(const Duration(seconds: 1), () {});
      final b1 =
          Dartamaker().plugin(
                DartamakerTagNames.dateiso,
                DartamakerConstants.pluginNullParam,
              )
              as DartamakerPluginDateiso;
      var res = b1.apply();
      var val = DateTime.tryParse(res)!;
      expect(val.millisecondsSinceEpoch > now.millisecondsSinceEpoch, isTrue);

      const tmin = '2012-02-26 13:27:00';
      const tmax = '2012-02-28 13:27:00';
      final b2 =
          Dartamaker().plugin(DartamakerTagNames.dateiso, <String, String>{
                DartamakerConstants.min: tmin,
                DartamakerConstants.max: tmax,
              })
              as DartamakerPluginDateiso;
      res = b2.apply();
      val = DateTime.tryParse(res)!;
      expect(
        DateTime.tryParse(res)!.millisecondsSinceEpoch >=
            DateTime.tryParse(tmin)!.millisecondsSinceEpoch,
        isTrue,
      );
      expect(
        DateTime.tryParse(res)!.millisecondsSinceEpoch <=
            DateTime.tryParse(tmax)!.millisecondsSinceEpoch,
        isTrue,
      );
    });
    test('Date', () {
      final b1 =
          Dartamaker().plugin(
                DartamakerTagNames.date,
                DartamakerConstants.pluginNullParam,
              )
              as DartamakerPluginDate;
      final res = b1.apply();
      expect(res.contains('T'), isFalse);
      expect(res.contains(':'), isFalse);
      expect(res.contains('-'), isTrue);
    });
    test('Latitude', () {
      final b1 =
          Dartamaker().plugin(
                DartamakerTagNames.latitude,
                DartamakerConstants.pluginNullParam,
              )
              as DartamakerPluginLatitude;
      final res = b1.apply();
      final val = double.tryParse(res)!;
      expect(val >= -90.0, isTrue);
      expect(val <= 90.0, isTrue);
    });
    test('Longitude', () {
      final b1 =
          Dartamaker().plugin(
                DartamakerTagNames.longitude,
                DartamakerConstants.pluginNullParam,
              )
              as DartamakerPluginLongitude;
      final res = b1.apply();
      final val = double.tryParse(res)!;
      expect(val >= -180.0, isTrue);
      expect(val <= 180.0, isTrue);
    });
    test('Letters', () {
      final b1 =
          Dartamaker().plugin(
                DartamakerTagNames.letters,
                DartamakerConstants.pluginNullParam,
              )
              as DartamakerPluginLetters;
      expect(b1.apply().length, 5);
      final p1 = <String, String>{DartamakerConstants.numletters: '20'};
      final b2 =
          Dartamaker().plugin(DartamakerTagNames.letters, p1)
              as DartamakerPluginLetters;
      final res = b2.apply();
      expect(res.length, 20);
    });
    test('Names', () {
      final name =
          Dartamaker().plugin(DartamakerTagNames.name, null)
              as DartamakerPluginName;
      final firstnames = DartamakerPluginFirstname().names;
      final surnames = DartamakerPluginSurname().names;
      final a1 = name.apply();
      expect(a1.split(' ')[0], anyOf(firstnames));
      expect(a1.split(' ')[1], anyOf(surnames));
    });
    test('Normal', () {
      final b1 =
          Dartamaker().plugin(
                DartamakerTagNames.normal,
                DartamakerConstants.pluginNullParam,
              )
              as DartamakerPluginNormal;
      var res = b1.apply();
      expect(res.isNotEmpty, isTrue);
      expect(res.split('.')[1].length, 4);

      final b2 =
          Dartamaker().plugin(DartamakerTagNames.normal, <String, String>{
                DartamakerConstants.mean: '20000',
                DartamakerConstants.stddev: '1000',
                DartamakerConstants.decimalplaces: '2',
              })
              as DartamakerPluginNormal;
      res = b2.apply();
      expect(res.isNotEmpty, isTrue);
      expect(res.split('.')[1].length, 2);
    });
    test('One of', () {
      final name =
          Dartamaker().plugin(
                DartamakerTagNames.oneof,
                DartamakerConstants.pluginNullParam,
              )
              as DartamakerPluginOneof;
      final a1 = name.apply();
      expect(a1, 'NoneSet');
      const names = 'Gryffindor Hufflepuff Ravenclaw Slytherin';
      final b2 =
          Dartamaker().plugin(DartamakerTagNames.oneof, <String, String>{
                DartamakerConstants.args: names,
              })
              as DartamakerPluginOneof;
      final a2 = b2.apply();
      expect(names.contains(a2), isTrue);
    });
    test('Postcode', () {
      final code =
          Dartamaker().plugin(DartamakerTagNames.postcode, null)
              as DartamakerPluginPostcode;
      final a1 = code.apply();
      expect(a1.isNotEmpty, isTrue);
      expect(a1.split(' ')[0].length, anyOf(3, 4));
      expect(a1.split(' ')[1].length, 3);
    });
    test('Price', () {
      final b1 =
          Dartamaker().plugin(
                DartamakerTagNames.price,
                DartamakerConstants.pluginNullParam,
              )
              as DartamakerPluginPrice;
      var res = b1.apply();
      expect(int.tryParse(res)! >= 1, isTrue);
      expect(int.tryParse(res)! <= 100, isTrue);
      final b2 =
          Dartamaker().plugin(DartamakerTagNames.price, <String, String>{
                DartamakerConstants.max: '1000.0',
                DartamakerConstants.min: '500.0',
              })
              as DartamakerPluginPrice;
      res = b2.apply();
      expect(int.tryParse(res)! >= 500, isTrue);
      expect(int.tryParse(res)! <= 1000, isTrue);
    });
    test('States', () {
      final state =
          Dartamaker().plugin(DartamakerTagNames.state, null)
              as DartamakerPluginState;
      final states = state.states;
      final a1 = state.apply();
      expect(a1, anyOf(states));
    });
    test('State Codes', () {
      final statecode =
          Dartamaker().plugin(DartamakerTagNames.statecode, null)
              as DartamakerPluginStatecode;
      final statecodes = statecode.statecodes;
      final a1 = statecode.apply();
      expect(a1, anyOf(statecodes));
    });
    test('Streets', () {
      final street =
          Dartamaker().plugin(DartamakerTagNames.street, null)
              as DartamakerPluginStreet;
      final streets = street.streets;
      final a1 = street.apply();
      expect(a1, anyOf(streets));
    });
    test('Telephone numbers', () {
      final tel =
          Dartamaker().plugin(DartamakerTagNames.tel, null)
              as DartamakerPluginTel;
      final codes = tel.codes;
      final a1 = tel.apply();
      final parts = a1.split('-');
      expect(parts.length, 4);
      expect(parts[0].startsWith('+'), isTrue);
      expect(parts[0].length, anyOf(3, 4));
      expect(parts[0].substring(1), anyOf(codes));
      expect(parts[1].length, 4);
      expect(parts[2].length, 3);
      expect(parts[3].length, 3);
    });
    test('Time', () {
      final t =
          Dartamaker().plugin(DartamakerTagNames.time, null)
              as DartamakerPluginTime;
      final a1 = t.apply();
      final parts = a1.split(':');
      expect(parts.length, 3);
    });
    test('Timestamp', () {
      final t =
          Dartamaker().plugin(DartamakerTagNames.timestamp, null)
              as DartamakerPluginTimestamp;
      final a1 = t.apply();
      expect(a1.length, anyOf(13, 14, 15));
    });
    test('Titles', () {
      final title =
          Dartamaker().plugin(DartamakerTagNames.title, null)
              as DartamakerPluginTitle;
      final titles = title.titles;
      final a1 = title.apply();
      expect(a1, anyOf(titles));
    });
    test('Towns', () {
      final town =
          Dartamaker().plugin(DartamakerTagNames.town, null)
              as DartamakerPluginTown;
      final towns = town.towns;
      final a1 = town.apply();
      expect(a1, anyOf(towns));
    });
    test('Uuids', () {
      final b1 =
          Dartamaker().plugin(
                DartamakerTagNames.uuid,
                DartamakerConstants.pluginNullParam,
              )
              as DartamakerPluginUuid;
      expect(b1.apply().length, 16);
      final p1 = <String, String>{DartamakerConstants.length: '30'};
      final b2 =
          Dartamaker().plugin(DartamakerTagNames.uuid, p1)
              as DartamakerPluginUuid;
      final res = b2.apply();
      expect(res.length, 30);
    });
    test('Websites', () {
      final ws =
          Dartamaker().plugin(DartamakerTagNames.website, null)
              as DartamakerPluginWebsite;
      final a1 = ws.apply();
      expect(a1.startsWith('http'), isTrue);
    });
    test('Urls', () {
      final url =
          Dartamaker().plugin(DartamakerTagNames.url, null)
              as DartamakerPluginUrl;
      final a1 = url.apply();
      expect(a1.startsWith('http'), isTrue);
    });
    test('Words', () {
      final words =
          Dartamaker().plugin(
                DartamakerTagNames.words,
                DartamakerConstants.pluginNullParam,
              )
              as DartamakerPluginWords;
      var a1 = words.apply();
      expect(a1.split(' ').length, 5);
      final words1 =
          Dartamaker().plugin(DartamakerTagNames.words, <String, String>{
                DartamakerConstants.count: '20',
              })
              as DartamakerPluginWords;
      a1 = words1.apply();
      expect(a1.split(' ').length, 20);
    });
    test('Zip codes', () {
      final zip =
          Dartamaker().plugin(DartamakerTagNames.zip, null)
              as DartamakerPluginZip;
      final a1 = zip.apply();
      expect(a1.length, 5);
    });
  });

  group('By Tag Name', () {
    test('Letters - default', () {
      final letters =
          Dartamaker().byTagName('letters', '') as DartamakerPluginLetters;
      expect(letters, isA<DartamakerPluginLetters>());
      final a1 = letters.apply();
      expect(a1.length, 5);
    });
    test('Letters - 1 param', () {
      final letters =
          Dartamaker().byTagName('letters', '10') as DartamakerPluginLetters;
      expect(letters, isA<DartamakerPluginLetters>());
      final a1 = letters.apply();
      expect(a1.length, 10);
    });
    test('Integer - default', () {
      final integer =
          Dartamaker().byTagName('integer', '') as DartamakerPluginInteger;
      expect(integer, isA<DartamakerPluginInteger>());
      final a3 = integer.apply();
      expect(a3.length, anyOf(1, 2, 3));
    });
    test('Integer - 2 param', () {
      final integer =
          Dartamaker().byTagName('integer', '1000 2000')
              as DartamakerPluginInteger;
      expect(integer, isA<DartamakerPluginInteger>());
      final a1 = integer.apply();
      expect(a1.length, 4);
      expect(int.tryParse(a1)! >= 1000, isTrue);
      expect(int.tryParse(a1)! <= 2000, isTrue);
    });
    test('Integer - 1 param', () {
      final integer =
          Dartamaker().byTagName('integer', '10') as DartamakerPluginInteger;
      expect(integer, isA<DartamakerPluginInteger>());
      final a1 = integer.apply();
      expect(a1.length, anyOf(2, 3));
      expect(int.tryParse(a1)! >= 10, isTrue);
      expect(int.tryParse(a1)! <= 100, isTrue);
    });
    test('Float - default', () {
      final float =
          Dartamaker().byTagName('float', '') as DartamakerPluginFloat;
      expect(float, isA<DartamakerPluginFloat>());
      final a1 = float.apply();
      expect(double.tryParse(a1)! >= 1.0, isTrue);
      expect(double.tryParse(a1)! <= 100.0, isTrue);
      expect(a1.split('.')[1].length, 4);
    });
    test('Float - 3 param', () {
      final float =
          Dartamaker().byTagName('float', '1000.0 2000.0 6')
              as DartamakerPluginFloat;
      expect(float, isA<DartamakerPluginFloat>());
      final a1 = float.apply();
      expect(double.tryParse(a1)! >= 1000.0, isTrue);
      expect(double.tryParse(a1)! <= 2000.0, isTrue);
      expect(a1.split('.')[1].length, 6);
    });
    test('Float - 2 param', () {
      final float =
          Dartamaker().byTagName('float', '1000.0 2000.0')
              as DartamakerPluginFloat;
      expect(float, isA<DartamakerPluginFloat>());
      final a1 = float.apply();
      expect(double.tryParse(a1)! >= 1000.0, isTrue);
      expect(double.tryParse(a1)! <= 2000.0, isTrue);
      expect(a1.split('.')[1].length, 4);
    });
    test('Float - 1 param', () {
      final float =
          Dartamaker().byTagName('float', '10.0') as DartamakerPluginFloat;
      expect(float, isA<DartamakerPluginFloat>());
      final a1 = float.apply();
      expect(double.tryParse(a1)! >= 10.0, isTrue);
      expect(double.tryParse(a1)! <= 100.0, isTrue);
      expect(a1.split('.')[1].length, 4);
    });
    test('Street', () {
      final street =
          Dartamaker().byTagName('street', '') as DartamakerPluginStreet;
      expect(street, isA<DartamakerPluginStreet>());
      final a1 = street.apply();
      expect(a1, anyOf(street.streets));
    });
    test('Null', () {
      final z = DartamakerPluginNull();
      final a1 = z.apply();
      expect(a1, 'Null plugin - error');
    });
  });
}
