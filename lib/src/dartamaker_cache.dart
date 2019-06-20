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

  /// Get a plugin cached value
  String value(DartamakerTagNames tagName) {
    String ret;
    if (_cache.containsKey(tagName)) {
      ret = _cache[tagName];
    }
    return ret;
  }

  /// Update a value
  void update(String tagName, String value) {
    for (DartamakerTagNames name in DartamakerTagNames.values) {
      if (name.toString().split('.')[1] == tagName) {
        _cache[name] = value;
      }
    }
  }

  /// To String
  @override
  String toString() => _cache.toString();
}
