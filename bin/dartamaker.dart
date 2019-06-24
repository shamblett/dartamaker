/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

import 'package:dartamaker/dartamaker.dart';
import 'package:args/args.dart';

int main(List<String> args) {
  final Dartamaker datagen = Dartamaker();

  int iterations = 1;
  DartamakerFormatter formatter = DartamakerFormatterNone();
  String templatePath = '';

  final ArgParser parser = ArgParser();
  parser.addOption('format',
      abbr: 'f',
      defaultsTo: 'none',
      help: 'Format of the output data',
      allowed: <String>['json', 'csv', 'xml', 'none'],
      callback: (String param) {
    formatter = datagen.formatter(DartamakerFormattertype.fromString(param));
  });
  parser.addOption('iterations',
      abbr: 'i',
      defaultsTo: '1',
      help: 'Number of records to generate, must be greater than 0',
      callback: (String param) {
    final int tmp = int.tryParse(param);
    if (tmp != null && tmp >= 1) {
      iterations = tmp;
    }
  });
  parser.addOption(
    'template',
    abbr: 't',
    help: 'The path of the template file',
    callback: (String param) => templatePath = param,
  );
  parser.addOption(
    'list',
    abbr: 'l',
    help: 'List available tags',
  );
  parser.addOption(
    'help',
    abbr: 'h',
  );

  parser.parse(args);
  final Map<String, Option> options = parser.options;

  // Help
  if (options.containsKey('help')) {
    print(parser.usage);
    return 0;
  }

  // Tag list
  if (options.containsKey('list')) {
    print(datagen.allTagNames());
    return 0;
  }

  return 0;
}
