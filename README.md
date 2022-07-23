# Concourse CI Sample
This repository is an example of building a CI pipeline using Concourse CI for Concourse CI beginners.
Build and test, upload test result to Gist and Sonarqube, Notify Slack, push image to Docker Hub.
# Concourse CI features
* Container based ci
* Pipeline with YAML
* Scalable
* Simple UI

# Pipeline visual image
![pipeline](./docs/image/pipeline_image.png)

# Setup

```shell
~$ git clone git@github.com:kodacme/concourse-ci-sample.git
```

```shell
~$ ./keys/generate

~$ docker-compose up -d
```

Install the fly CLI by downloading from [concourse ci](https://concourse-ci.org/).
fly is a CLI dedicated to Concourse CI.  
Concourse CI is operated using this fly command.

```shell
~$ chmod +x ~/Downloads/fly
~$ mv ~/Downloads/fly /usr/local/bin
~$ fly -v
7.8.1
```

Login to 'localhost:8080' with target 'sample-ci'. (username: test, password: test)
```shell
~$ fly -t sample-ci login -c http://localhost:8080
```
![webui_login](./docs/image/login_screenshot.png)

---
Write Github auth, sonarqube, etc. here
---

Set pipeline
```shell
~$ fly -t sample-ci set-pipeline -p my-pipeline -c dev-ci/dev-pipeline.yaml -l dev-ci/dev-pipeline-vars.yaml
```

Unpause the new pipeline, which is pause by default
```shell
~$ fly -t sample-ci unpause-pipeline -p my-pipeline
```
You can run the job by creating PR to develop branch in my [flask-python-demo repo](https://github.com/kodacme/flask-pytest-demo)
or by clicking the '+' button on the WEB UI.  

![trigger_job](./docs/image/trigger_screenshot.png)
