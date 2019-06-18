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
    final DartamakerFormatterNone none =
        Dartamaker().formatter(DartamakerFormatterTypes.none);
    const String str = 'theString';
    expect(none.filter(5), '5');
    expect(none.filter(str), str);
    expect(none.postCommit(str), str);
  });
}
