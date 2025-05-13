/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

import 'package:dartamaker/dartamaker.dart';
import 'package:test/test.dart';

void main() {
  group('Find Tags', () {
    final maker = Dartamaker();
    test('Null parameter', () {
      final res = maker.findTags(null);
      expect(res, isEmpty);
    });
    test('No tags', () {
      const noTags = 'There are no tags here';
      final res = maker.findTags(noTags);
      expect(res, isEmpty);
    });

    test('Valid tags', () {
      const tags = '{{uuid}},{{date}},{{firstname}} {{surname}},{{email}}';
      final res = maker.findTags(tags);
      expect(res.length, 5);
      expect(res[0][DartamakerConstants.original], '{{uuid}}');
      expect(res[0][DartamakerConstants.tag], 'uuid');
      expect(res[0][DartamakerConstants.params], '');
      expect(res[1][DartamakerConstants.original], '{{date}}');
      expect(res[1][DartamakerConstants.tag], 'date');
      expect(res[1][DartamakerConstants.params], '');
      expect(res[2][DartamakerConstants.original], '{{firstname}}');
      expect(res[2][DartamakerConstants.tag], 'firstname');
      expect(res[2][DartamakerConstants.params], '');
      expect(res[3][DartamakerConstants.original], '{{surname}}');
      expect(res[3][DartamakerConstants.tag], 'surname');
      expect(res[3][DartamakerConstants.params], '');
      expect(res[4][DartamakerConstants.original], '{{email}}');
      expect(res[4][DartamakerConstants.tag], 'email');
      expect(res[4][DartamakerConstants.params], '');
    });
    test('Valid tags with params', () {
      const tags = '{{words 20}} {{boolean 0.75}}, {{float 10000,70000,0}}';
      final res = maker.findTags(tags);
      expect(res.length, 3);
      expect(res[0][DartamakerConstants.original], '{{words 20}}');
      expect(res[0][DartamakerConstants.tag], 'words');
      expect(res[0][DartamakerConstants.params], '20');
      expect(res[1][DartamakerConstants.original], '{{boolean 0.75}}');
      expect(res[1][DartamakerConstants.tag], 'boolean');
      expect(res[1][DartamakerConstants.params], '0.75');
      expect(res[2][DartamakerConstants.original], '{{float 10000,70000,0}}');
      expect(res[2][DartamakerConstants.tag], 'float');
      expect(res[2][DartamakerConstants.params], '10000,70000,0');
    });
    test('Valid tags mixed', () {
      const tags =
          '{{words 20}} {{boolean 0.75}}, {{date}} '
          '{{email}} {{float 100,1000,2}}';
      final res = maker.findTags(tags);
      expect(res.length, 5);
      expect(res[0][DartamakerConstants.original], '{{words 20}}');
      expect(res[0][DartamakerConstants.tag], 'words');
      expect(res[0][DartamakerConstants.params], '20');
      expect(res[1][DartamakerConstants.original], '{{boolean 0.75}}');
      expect(res[1][DartamakerConstants.tag], 'boolean');
      expect(res[1][DartamakerConstants.params], '0.75');
      expect(res[2][DartamakerConstants.original], '{{date}}');
      expect(res[2][DartamakerConstants.tag], 'date');
      expect(res[2][DartamakerConstants.params], '');
      expect(res[3][DartamakerConstants.original], '{{email}}');
      expect(res[3][DartamakerConstants.tag], 'email');
      expect(res[3][DartamakerConstants.params], '');
      expect(res[4][DartamakerConstants.original], '{{float 100,1000,2}}');
      expect(res[4][DartamakerConstants.tag], 'float');
      expect(res[4][DartamakerConstants.params], '100,1000,2');
    });

    test('Valid tags mixed with words', () {
      const tags =
          '{{words 20}} hello {{boolean 0.75}}, again {{date}} '
          '{{email}} its me {{float 100,1000,2}}';
      final res = maker.findTags(tags);
      expect(res.length, 5);
      expect(res[0][DartamakerConstants.original], '{{words 20}}');
      expect(res[0][DartamakerConstants.tag], 'words');
      expect(res[0][DartamakerConstants.params], '20');
      expect(res[1][DartamakerConstants.original], '{{boolean 0.75}}');
      expect(res[1][DartamakerConstants.tag], 'boolean');
      expect(res[1][DartamakerConstants.params], '0.75');
      expect(res[2][DartamakerConstants.original], '{{date}}');
      expect(res[2][DartamakerConstants.tag], 'date');
      expect(res[2][DartamakerConstants.params], '');
      expect(res[3][DartamakerConstants.original], '{{email}}');
      expect(res[3][DartamakerConstants.tag], 'email');
      expect(res[3][DartamakerConstants.params], '');
      expect(res[4][DartamakerConstants.original], '{{float 100,1000,2}}');
      expect(res[4][DartamakerConstants.tag], 'float');
      expect(res[4][DartamakerConstants.params], '100,1000,2');
    });
    test('Invalid tags', () {
      const tags =
          '{{words 20} {{boolean 0.75}}, {date}} '
          '{{email}} {{float 100,1000,2}}';
      final res = maker.findTags(tags);
      expect(res.length, 3);
      expect(res[0][DartamakerConstants.original], '{{boolean 0.75}}');
      expect(res[0][DartamakerConstants.tag], 'boolean');
      expect(res[0][DartamakerConstants.params], '0.75');
      expect(res[1][DartamakerConstants.original], '{{email}}');
      expect(res[1][DartamakerConstants.tag], 'email');
      expect(res[1][DartamakerConstants.params], '');
      expect(res[2][DartamakerConstants.original], '{{float 100,1000,2}}');
      expect(res[2][DartamakerConstants.tag], 'float');
      expect(res[2][DartamakerConstants.params], '100,1000,2');
    });
  });

  group('Swap', () {
    final maker = Dartamaker();
    final DartamakerFormatter formatter = DartamakerFormatterNone();

    test('Single Uuid', () {
      final params = <String, String>{
        DartamakerConstants.original: '{{uuid}}',
        DartamakerConstants.tag: 'uuid',
        DartamakerConstants.params: '',
      };
      const template = 'Here is the {{uuid}} for you';
      final res =
          maker.swap(template, <Map<String, String>>[params], formatter)!;
      expect(res.contains('{{'), isFalse);
      expect(res.contains('}}'), isFalse);
      expect(res.length, template.length + 8);
    });
    test('Double Uuid', () {
      final params = <String, String>{
        DartamakerConstants.original: '{{uuid}}',
        DartamakerConstants.tag: 'uuid',
        DartamakerConstants.params: '',
      };
      const template = 'Here is the {{uuid}} for you and again {{uuid}}';
      final res =
          maker.swap(template, <Map<String, String>>[params], formatter)!;
      expect(res.contains('{{'), isFalse);
      expect(res.contains('}}'), isFalse);
      expect(res.length, template.length + 16);
    });
    test('Single Word', () {
      final params = <String, String>{
        DartamakerConstants.original: '{{words}}',
        DartamakerConstants.tag: 'words',
        DartamakerConstants.params: '',
      };
      const template = 'Here are the {{words}} for you';
      final res =
          maker.swap(template, <Map<String, String>>[params], formatter)!;
      expect(res.contains('{{'), isFalse);
      expect(res.contains('}}'), isFalse);
      expect(res.length > template.length, isTrue);
    });
    test('Double Word with parameters', () {
      final params = <String, String>{
        DartamakerConstants.original: '{{words}}',
        DartamakerConstants.tag: 'words',
        DartamakerConstants.params: '10',
      };
      const template = 'Here is the {{words}} for you and again {{words}}';
      final res =
          maker.swap(template, <Map<String, String>>[params], formatter)!;
      expect(res.contains('{{'), isFalse);
      expect(res.contains('}}'), isFalse);
      expect(res.length > template.length, isTrue);
    });
    test('Mixed', () {
      final params = <String, String>{
        DartamakerConstants.original: '{{words}}',
        DartamakerConstants.tag: 'words',
        DartamakerConstants.params: '2',
      };
      final params1 = <String, String>{
        DartamakerConstants.original: '{{uuid}}',
        DartamakerConstants.tag: 'uuid',
        DartamakerConstants.params: '',
      };
      const template =
          'Here are 2 words "{{words}}" for you and a uuid "{{uuid}}"';
      final res =
          maker.swap(template, <Map<String, String>>[
            params,
            params1,
          ], formatter)!;
      expect(res.contains('{{'), isFalse);
      expect(res.contains('}}'), isFalse);
      expect(res.length > template.length, isTrue);
    });
    test('Last', () {
      var template = 'Here is the first uuid -{{uuid}}';
      final params1 = <String, String>{
        DartamakerConstants.original: '{{uuid}}',
        DartamakerConstants.tag: 'uuid',
        DartamakerConstants.params: '',
      };
      maker.swap(template, <Map<String, String>>[params1], formatter);
      template = 'Here is the second uuid -{{uuid}}';
      final params2 = <String, String>{
        DartamakerConstants.original: '{{uuid}}',
        DartamakerConstants.tag: 'uuid',
        DartamakerConstants.params: '',
      };
      final res1 =
          maker.swap(template, <Map<String, String>>[params2], formatter)!;
      template = 'Here is the last uuid -{{last uuid}}';
      final params = <String, String>{
        DartamakerConstants.original: '{{last uuid}}',
        DartamakerConstants.tag: 'last',
        DartamakerConstants.params: 'uuid',
      };
      final res2 =
          maker.swap(template, <Map<String, String>>[params], formatter)!;
      expect(res2.contains('{{'), isFalse);
      expect(res2.contains('}}'), isFalse);
      expect(res2.length > template.length, isTrue);
      expect(res2.split('-')[1], res1.split('-')[1]);
    });
  });

  group('Generate', () {
    final maker = Dartamaker();
    final DartamakerFormatter formatter = DartamakerFormatterNone();
    const template =
        'Some words {{words 3}}, a timestamp {{timestamp}} and a name {{name}}';
    test('Null iteration', () {
      final res = maker.generate(template, formatter, 0);
      expect(res.length, 1);
      expect(res[0], template);
    });
    test('Single iteration', () {
      final res = maker.generate(template, formatter, 1);
      expect(res.length, 1);
    });
    test('Multiple iteration', () {
      final res = maker.generate(template, formatter, 10);
      expect(res.length, 10);
    });
  });

  group('Misc', () {
    final maker = Dartamaker();
    test('All tags', () {
      final tags = maker.allTagNames();
      print(tags);
    });
  });
}
