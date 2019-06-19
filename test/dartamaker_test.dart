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
    final Dartamaker maker = Dartamaker();
    test('Null parameter', () {
      final List<Map<String, String>> res = maker.findTags(null);
      expect(res, isEmpty);
    });
    test('No tags', () {
      const String noTags = 'There are no tags here';
      final List<Map<String, String>> res = maker.findTags(noTags);
      expect(res, isEmpty);
    });

    test('Valid tags', () {
      const String tags =
          '{{uuid}},{{date}},{{firstname}} {{surname}},{{email}}';
      final List<Map<String, String>> res = maker.findTags(tags);
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
  });
}
