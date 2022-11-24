
# Jenkins agent as Kubernetes pod

- Using Jenkins agent as Kubernetes pod
- Bluegreen Deployment
- Sonarqube integraion
- kaniko docker builder
- RBAC for Kubernetes access with jenkins

## Pipeline
- Cloning github repo
- Sonarqube analysis
- Quality gate
- Building docker image with kaniko
- Triggering another pipeline with build number parameter
- Deploying springboot application into Kubernetes
