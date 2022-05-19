import 'package:gitlab_pipeline_gen/di/di.dart';
import 'package:gitlab_pipeline_gen/utils/file_helper.dart';
import 'package:gitlab_pipeline_gen/utils/ui.dart';

class NewPipelineUseCase {

  UI? ui;
  FileHelper? fileHelper;

  NewPipelineUseCase({UI? ui, FileHelper? fileHelper}) {
    this.ui = get<UI>(object: ui);
    this.fileHelper = get<FileHelper>(object: fileHelper);
  }

  run() {
    final currentConfig = "pipeline.json";

    if (fileHelper?.fileExists(currentConfig) != true) {
      ui?.echo("Could not find pipeline.json file at current dir", Color.red);
      return;
    }

    ui?.echo("Found pipeline.json", Color.blue);
  }
}