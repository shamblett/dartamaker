/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

// ignore_for_file: omit_local_variable_types
// ignore_for_file: unnecessary_final
// ignore_for_file: cascade_invocations
// ignore_for_file: avoid_print
// ignore_for_file: avoid_types_on_closure_parameters

/// Tag cache
class DartamakerCache {
  final Map<DartamakerTagNames, String> _cache = <DartamakerTagNames, String>{};

  /// Get a plugin cached value by tag name
  String valueByTagName(DartamakerTagNames tagName) => _cache[tagName];

  /// Get a plugin cached value by string tag name
  String valueByStringTagName(String tagName) {
    final DartamakerTagNames name = DartamakerTagname.fromString(tagName);
    return _cache[name];
  }

  /// Update a value by string tag name
  void updateByStringTagName(String tagName, String value) {
    final DartamakerTagNames name = DartamakerTagname.fromString(tagName);
    _cache[name] = value;
  }

  /// Update a value by tag name
  void updateByTagName(DartamakerTagNames tagName, String value) =>
      _cache[tagName] = value;

  /// Clear
  void clear() => _cache.clear();

  /// To String
  @override
  String toString() => _cache.toString();
}
