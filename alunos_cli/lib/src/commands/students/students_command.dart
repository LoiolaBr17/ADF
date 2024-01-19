import 'package:args/command_runner.dart';

import '../../repositories/student_repository.dart';
import 'subcommands/find_all.dart';
import 'subcommands/find_by_id.dart';
import 'subcommands/insert.dart';

class StudentsCommand extends Command {
  @override
  String get description => 'Students Operations';

  @override
  String get name => 'students';

  StudentsCommand() {
    final studentRepository = StudentRepository();
    addSubcommand(FindAllCommand(studentRepository));
    addSubcommand(FindById(studentRepository));
    addSubcommand(Insert(studentRepository));
  }
  
}