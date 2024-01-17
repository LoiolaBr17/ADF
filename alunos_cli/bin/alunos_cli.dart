import 'package:args/args.dart';
import 'package:args/command_runner.dart';

void main(List<String> arguments) {
  // final argParser = ArgParser();
  // argParser.addFlag('data', abbr: 'd');
  // argParser.addOption('name', abbr: 'n');
  // argParser.addOption('template', abbr: 't');

  // final argResults = argParser.parse(arguments);

  // print(argResults['data']);

  CommandRunner('ADF CLI','ADF CLI')
    ..addCommand(ExemploCommand())
    ..run(arguments);
}

class ExemploCommand extends Command {
  @override
  String get description => 'Exemplo de Comando';

  @override
  String get name => 'exemplo';

  ExemploCommand() {
    argParser.addOption('template', abbr: 't', help: 'Template de criação do projeto');
  }

  @override
  void run() {
    print('Executando o comando de exemplo');
  }
  
}
