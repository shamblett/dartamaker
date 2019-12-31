/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

// ignore_for_file: avoid_annotating_with_dynamic

/// Formatter base class
abstract class DartamakerFormatter {
  /// Filter

  String filter(dynamic obj);

  /// Post commit operation
  String postCommit(String str);
}
