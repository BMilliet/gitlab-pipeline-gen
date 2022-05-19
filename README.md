# gitlab-pipeline-gen
Gitlab pipelines generator

## gitlab-pipelines-gen new
```
gitlab-pipelines-gen new
```
or
```
dart bin/gitlab_pipeline_gen.dart new
```

Generates new pipelines base on a file names "pipeline.json" in current directory.
pipeline.json example:

```json
{
    "base": "PATH_TO_YOUR_PROJECT",
    "pipelines": [
        {
            "SOME_VARIABLE": "hello",
            "ANOTHER_VARIABLE": "world",
            "IS_CLI": true
        },
        {
            "SOME_VARIABLE": "hello",
            "ANOTHER_VARIABLE": "world",
            "IS_CLI": true
        }
    ]
}
```