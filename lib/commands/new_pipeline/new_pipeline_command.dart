
import 'package:args/command_runner.dart';
import 'package:gitlab_pipeline_gen/commands/new_pipeline/new_pipeline_usecase.dart';
import 'package:gitlab_pipeline_gen/di/di.dart';

class NewPipelineCommand extends Command {
  @override
  String description = "generates new pipeline";

  @override
  String name = "new";

  NewPipelineUseCase? usecase;

  NewPipelineCommand({NewPipelineUseCase? usecase}) {
    this.usecase = get<NewPipelineUseCase>(object: usecase);
  }

  @override
  run() {
    usecase?.run();
  }
}