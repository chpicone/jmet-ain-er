# jmetainer
This is a project to make docker container to manage jmeter test with web interface

## Usage

This docker image is available as a [trusted build on the docker index](https://hub.docker.com/r/geosystems/jmet-ain-er/),
so there's no setup required.
Using this image for the first time will start a download.
Further runs will be immediate, as the image will be cached locally.

The recommended way to run this container looks like this:

```bash
$ docker run -ti -d --name jmetainer geosystems/jmet-ain-er
```

This is a rather common setup following docker's conventions:

* `-ti` will ensures that the container has a valid tty associated with it and that stdin remains connected
* `-d` will run a detached session running in the background
* `--name` will assign the given name to the running container instance
* `geosystems/jmet-ain-er` the name of this docker image
