# jmetainer
This is a project to make docker container to manage jmeter test with web interface

## Usage

This docker image is available as a [trusted build on the docker index](https://index.docker.io/u/clue/php-redis-server/),
so there's no setup required.
Using this image for the first time will start a download.
Further runs will be immediate, as the image will be cached locally.

The recommended way to run this container looks like this:

```bash
$ docker run -d --name redis clue/php-redis-server
```

This is a rather common setup following docker's conventions:

* `-d` will run a detached session running in the background
* `--name` will assign the given name to the running container instance
* `clue/php-redis-server` the name of this docker image
