/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

import 'package:dartamaker/dartamaker.dart';
import 'package:test/test.dart';

/// Test classes
Map<String, dynamic> json1 = <String, dynamic>{
  'name': 'Billy',
  'number': 6,
  'float': 45.0
};

Map<String, String> json2 = <String, String>{'str1': '"hello"'};

Map<String, String> json3 = <String, String>{'str1': '"hello again"'};

void main() {
  test('None', () {
    final DartamakerFormatterNone none =
        Dartamaker().formatter(DartamakerFormatterTypes.none);
    expect(none.filter(null), isNull);
    const String str = 'theString';
    expect(none.filter(5), '5');
    expect(none.filter(str), str);
    expect(none.postCommit(str), str);
  });
  test('Json', () {
    final DartamakerFormatterJson json =
        Dartamaker().formatter(DartamakerFormatterTypes.json);
    expect(json.filter(null), 'null');
    expect(json.filter(<int>[1, 2, 3]), '[1,2,3]');
    expect(json.filter(json1), '{"name":"Billy","number":6,"float":45.0}');
    expect(json.filter(json2), '{"str1":"hello"}');
    expect(json.filter(json3), '{"str1":"hello again"}');
  });
}
