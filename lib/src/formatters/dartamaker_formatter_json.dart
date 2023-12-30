/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of '../../dartamaker.dart';

/// JSON formatter
class DartamakerFormatterJson implements DartamakerFormatter {
  /// Filter
  @override
  String filter(dynamic obj) => json.encode(obj).replaceAll('\\"', '');

  /// Post commit operation
  @override
  String? postCommit(String str) => json.decode(json.encode(str));
}
