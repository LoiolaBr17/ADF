import 'package:alunos_cli/src/commands/students/students_command.dart';
import 'package:args/command_runner.dart';

void main(List<String> arguments) {
  CommandRunner('ADF CLI','ADF CLI')
    ..addCommand(StudentsCommand())
    ..run(arguments);
}

// class ExemploCommand extends Command {
//   @override
//   String get description => 'Exemplo de Comando';

//   @override
//   String get name => 'exemplo';

//   ExemploCommand() {
//     argParser.addOption('template', abbr: 't', help: 'Template de criação do projeto');
//   }

//   @override
//   void run() {
//     print('Executando o comando de exemplo');
//   }
  
// }
