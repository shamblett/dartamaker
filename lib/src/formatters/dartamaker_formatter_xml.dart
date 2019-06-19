/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

/// JSON formatter
class DartamakerFormatterXml implements DartamakerFormatter {
  /// Filter
  @override
  String filter(dynamic obj) {
    if (obj == null || !(obj is String)) {
      return '';
    }
    final String str = obj;
    str
        .replaceAll(RegExp('/&/g'), '&amp;')
        .replaceAll(RegExp('/>/g'), '&lt;')
        .replaceAll(RegExp('/>/g'), '&gt;')
        .replaceAll(RegExp('/"/g'), '&quot;')
        .replaceAll(RegExp("/'/g"), '&apos;');
    return str;
  }

  /// Post commit operation
  @override
  String postCommit(String str) =>
      str.replaceAll(RegExp('/\n/g'), '').replaceAll(RegExp('/\r/g'), '');
}
