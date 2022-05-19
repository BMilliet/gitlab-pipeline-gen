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
    final prefix = "/-/pipelines/new?";

    if (fileHelper?.fileExists(currentConfig) != true) {
      ui?.echo("Could not find pipeline.json file at current dir", Color.red);
      return;
    }

    final pipes = _generatePipes(currentConfig, prefix);

    for (var p in pipes) {
      ui?.echo(p, Color.cyan); 
    }
  }

  List<dynamic> _generatePipes(String currentConfig, String prefix) {
    var pipes = [];
    final json = fileHelper?.readAsJson(currentConfig);

    for (var pipe in json?["pipelines"]) {
      pipes.add(_generatePipe(pipe, json?["base"], prefix));
    }

    return pipes;
  }

  String _generatePipe(Map<String, dynamic> args, String base, String prefix) {
    var pipe = base + prefix;
    final keyPrefix = "var%5B";
    final valuePrefix = "%5D=";

    for (var e in args.keys) {
      if (pipe.endsWith("?")) {
        pipe = pipe + keyPrefix + e + valuePrefix + args[e].toString();
      } else {
        pipe = "$pipe&$keyPrefix$e$valuePrefix${args[e]}";
      }
    }

    return pipe;
  }
}