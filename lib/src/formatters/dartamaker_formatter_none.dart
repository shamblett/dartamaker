/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

/// None(Null) formatter
class DartamakerFormatterNone implements DartamakerFormatter {
  /// Filter
  @override
  String? filter(dynamic obj) => obj?.toString();

  /// Post commit operation
  @override
  String postCommit(String str) => str;
}
