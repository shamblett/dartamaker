/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

/// The main dartamaker class
class Dartamaker {
  DartamakerPluginManager _pluginManager = DartamakerPluginManager();

  /// Get a plugin by tag name
  DartamakerPlugin plugin(
          DartamakerTagNames tagName, Map<String, String> params) =>
      _pluginManager.plugin(tagName, params);

  /// Get a tag substitution for a tag
  String substitute(DartamakerTagNames tagName, Map<String, String> params) =>
      plugin(tagName, params).apply();
}
