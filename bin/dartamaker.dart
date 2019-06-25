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

  // Initialize the argument parser
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
  parser.addFlag(
    'list',
    abbr: 'l',
    help: 'List available tags',
    negatable: false
  );
  parser.addFlag(
    'help',
    abbr: 'h',
    negatable: false
  );

  final ArgResults results = parser.parse(args);

  // Help
  if (results['help']) {
    print(parser.usage);
    return 0;
  }

  // Tag list
  if (results['list']) {
    print(datagen.allTagNames());
    return 0;
  }

  return 0;
}
