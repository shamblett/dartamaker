/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

/// Tag cache
class DartamakerCache {
  Map<DartamakerTagNames, String> _cache = Map<DartamakerTagNames, String>();

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
