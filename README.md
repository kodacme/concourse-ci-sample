# Setup

```shell
$ curl -O https://concourse-ci.org/docker-compose.yml
$ docker-compose up -d
```

Install the fly CLI by downloading from `https://concourse-ci.org/`

```shell
$ chmod +x ~/Downloads/fly
$ mv ~/Downloads/fly /usr/local/bin
$ fly -v
7.6.0
```

login
```shell
$ fly -t tutorial login -c http://localhost:8080 -u test -p test
logging in to team 'main'

target saved
```
