/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of '../../dartamaker.dart';

/// JSON formatter
class DartamakerFormatterXml implements DartamakerFormatter {
  /// Filter
  @override
  String filter(dynamic obj) {
    if (obj == null || (obj is! String)) {
      return '';
    }
    final str = obj;
    return str
        .replaceAll('&', '&amp;')
        .replaceAll('<', '&lt;')
        .replaceAll('>', '&gt;')
        .replaceAll('"', '&quot;')
        .replaceAll("'", '&apos;');
  }

  /// Post commit operation
  @override
  String postCommit(String str) =>
      str.replaceAll(RegExp('\n'), '').replaceAll(RegExp('\r'), '');
}
