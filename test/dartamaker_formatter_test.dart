/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

import 'package:dartamaker/dartamaker.dart';
import 'package:test/test.dart';

void main() {
  test('None', () {
    final none = Dartamaker().formatter(DartamakerFormatterTypes.none)
        as DartamakerFormatterNone;
    expect(none.filter(null), isNull);
    const str = 'theString';
    expect(none.filter(5), '5');
    expect(none.filter(str), str);
    expect(none.postCommit(str), str);
  });
  test('Json', () {
    final json = Dartamaker().formatter(DartamakerFormatterTypes.json)
        as DartamakerFormatterJson;
    expect(json.filter(null), 'null');
    expect(json.filter(<int>[1, 2, 3]), '[1,2,3]');
    final json1 = <String, dynamic>{
      'name': 'Billy',
      'number': 6,
      'float': 45.0
    };
    expect(json.filter(json1), '{"name":"Billy","number":6,"float":45.0}');
    final json2 = <String, String>{'str1': '"hello"'};
    expect(json.filter(json2), '{"str1":"hello"}');
    final json3 = <String, String>{'str1': '"hello again"'};
    expect(json.filter(json3), '{"str1":"hello again"}');
  });
  test('CSV', () {
    final csv = Dartamaker().formatter(DartamakerFormatterTypes.csv)
        as DartamakerFormatterCSV;
    expect(csv.filter(null), '');
    expect(csv.filter(5), '');
    const t1 = '"Hello"';
    expect(csv.filter(t1), '""Hello""');
    const t2 = 'Hello, again';
    expect(csv.filter(t2), '"Hello, again"');
    expect(csv.postCommit(t2), t2);
  });
  test('Xml', () {
    final xml = Dartamaker().formatter(DartamakerFormatterTypes.xml)
        as DartamakerFormatterXml;
    expect(xml.filter(null), '');
    const t1 = 'hello & again & again';
    expect(xml.filter(t1), 'hello &amp; again &amp; again');
    const t2 = 'hello < again < again';
    expect(xml.filter(t2), 'hello &lt; again &lt; again');
    const t3 = 'hello > again > again';
    expect(xml.filter(t3), 'hello &gt; again &gt; again');
    const t4 = 'hello " again " again';
    expect(xml.filter(t4), 'hello &quot; again &quot; again');
    const t5 = "hello ' again ' again";
    expect(xml.filter(t5), 'hello &apos; again &apos; again');
    const t6 = 'hello & < again >';
    expect(xml.filter(t6), 'hello &amp; &lt; again &gt;');
    const t7 = 'hello \n again \r';
    expect(xml.postCommit(t7), 'hello  again ');
  });
}
