# docker-aws3node
A Docker image that provides AWS CLI, S3 CLI and nodejs / npm

Based on [Alpine linux](https://hub.docker.com/_/alpine/) 3.7, this image provides
 * aws CLI (>= 1.16.3)
 * s3cmd (>= 2.0.2)
 * nodejs (>= 8.9.3) / npm (>= 5.5.1)

To set AWS credentials and basic settings, you should provide it via [environment variables](https://docs.aws.amazon.com/cli/latest/userguide/cli-environment.html). These work for aws CLI and s3cmd. For example:

```bash
docker run -i -t \
  -e AWS_ACCESS_KEY_ID=<YOUR AWS KEY> \
  -e AWS_SECRET_ACCESS_KEY=<YOUR AWS SECRET> \
  -e AWS_DEFAULT_REGION=eu-central-1 \
  simomat/aws3node /bin/bash
```

## License 

[MIT](LICENSE).
