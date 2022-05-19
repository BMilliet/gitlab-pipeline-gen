import 'package:gitlab_pipeline_gen/gitlab_pipeline_gen.dart' as gitlab_pipeline_gen;
import 'package:gitlab_pipeline_gen/di/di.dart' as di;

void main(List<String> arguments) {
  di.injectInstances();
  gitlab_pipeline_gen.run(arguments);  
}
