

import 'package:args/command_runner.dart';
import 'package:gitlab_pipeline_gen/commands/new_pipeline/new_pipeline_command.dart';

run(List<String> args) {
  var runner = CommandRunner("pipe-gen", "Gitlab pipeline generator CLI")
  ..addCommand(NewPipelineCommand());

  runner.run(args);
}