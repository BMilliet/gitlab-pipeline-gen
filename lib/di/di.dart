import 'package:get_it/get_it.dart';
import 'package:gitlab_pipeline_gen/commands/new_pipeline/new_pipeline_command.dart';
import 'package:gitlab_pipeline_gen/commands/new_pipeline/new_pipeline_usecase.dart';

T get<T extends Object>({T? object}) {
  return object ?? GetIt.I.get<T>();
}

injectInstances() {
  // Commands
  GetIt.I.registerLazySingleton(() => NewPipelineCommand());
  // Usecase
  GetIt.I.registerLazySingleton(() => NewPipelineUseCase());
}