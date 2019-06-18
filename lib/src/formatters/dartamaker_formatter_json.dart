/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

/// JSON formatter
class DartamakerFormatterJson implements DartamakerFormatter {
  /// Filter
  @override
  String filter(dynamic obj) => json
      .encode(obj)
      .replaceAll(RegExp('/^"/'), '')
      .replaceAll(RegExp('/"\$/'), '');

  /// Post commit operation
  @override
  String postCommit(String str) => str;
}
