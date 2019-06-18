/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

/// CSV formatter
class DartamakerFormatterCSV implements DartamakerFormatter {
  /// Filter
  @override
  String filter(dynamic obj) {
    if (!obj is String) {
      return '';
    }
    String str = obj;
    str = str.replaceAll(RegExp('/"/g'), '""');
    if (RegExp('/,/g').hasMatch(str)) {
      str = '"$str"';
    }
    return str;
  }

  /// Post commit operation
  @override
  String postCommit(String str) => str;
}
