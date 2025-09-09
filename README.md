# terraform-aws-codepipeline

**Unique Feature**: State files are passed between pipeline stages as CodePipeline artifacts instead of using S3 remote state, ensuring state consistency without external dependencies.

## Key Features
- **Artifact-based State Management**: Terraform state files are passed between stages as pipeline artifacts
- **No S3 State Dependency**: Eliminates the need for S3 remote state storage during pipeline execution
- **State Consistency**: Ensures exact state continuity from plan to apply to destroy stages






