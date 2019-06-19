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
    Dartamaker maker = Dartamaker();
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
    });
  });
}
