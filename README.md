# Concourse CI Sample
This repository is an example of building a CI pipeline using Concourse CI for Concourse CI beginners.

# Setup

```shell
~$ git clone git@github.com:kodacme/concourse-ci-sample.git

~$ ./keys/generate

~$ docker-compose up -d
```

Install the fly CLI by downloading from [concourse ci](https://concourse-ci.org/).
fly is a CLI dedicated to Concourse CI.  
Concourse CI is operated using this fly command.

```shell
$ chmod +x ~/Downloads/fly
$ mv ~/Downloads/fly /usr/local/bin
$ fly -v
7.8.1
```

```shell
~$ fly -t sample-ci login -c http://localhost:8080
```

```shell
fly -t sample-ci set-pipeline -p my-pipeline -c dev-ci/dev-pipeline.yaml -l dev-ci/dev-pipeline-vars.yaml
```

```shell
fly -t sample-ci unpause-pipeline -p my-pipeline
```
