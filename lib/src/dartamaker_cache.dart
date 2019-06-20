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
  String valueByTagName(DartamakerTagNames tagName) {
    String ret;
    if (_cache.containsKey(tagName)) {
      ret = _cache[tagName];
    }
    return ret;
  }

  /// Get a plugin cached value by string tag name
  String valueByStringTagName(String tagName) {
    String ret;
    for (DartamakerTagNames name in DartamakerTagNames.values) {
      if (name.toString().split('.')[1] == tagName) {
        if (_cache.containsKey(name)) {
          ret = _cache[name];
        }
      }
    }
    return ret;
  }

  /// Update a value by string tag name
  void updateByStringTagName(String tagName, String value) {
    for (DartamakerTagNames name in DartamakerTagNames.values) {
      if (name.toString().split('.')[1] == tagName) {
        _cache[name] = value;
      }
    }
  }

  /// Update a value by tag name
  void updateByTagName(DartamakerTagNames tagName, String value) =>
      _cache[tagName] = value;

  /// To String
  @override
  String toString() => _cache.toString();
}
