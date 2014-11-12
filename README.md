# docker-kpcli

[kpcli](http://kpcli.sourceforge.net/) is a command line interface (interactive shell)
to work with [KeePass](http://keepass.info/) database files.
This is a [docker](https://www.docker.io) image that eases setup.

![kpcli screenshot](http://kpcli.sourceforge.net/screengrab-2.4-3.png)

## Usage

This docker image is available as a [trusted build on the docker index](https://index.docker.io/u/clue/kpcli/),
so there's no setup required.
Using this image for the first time will start a download automatically.
Further runs will be immediate, as the image will be cached locally.

The recommended way to run this container looks like this:

```bash
$ docker run -it --rm -v /home/user/Desktop/keepass.kdb:/data/keepass.kdb --net=none clue/kpcli
```

While this might seem complicated at first, it's a rather common setup following docker's conventions:

* `-it` will run an interactive session that can be terminated with CTRL+C
* `--rm` will run a temporary session that will make sure to remove the container on exit
* `-v {AbsolutePathToKeepassFile}:/data/keepass.kdb` should be passed to mount the given KeePass file into the container
* `--net=none` should be passed to disable any and all network access, just in case
* `clue/kpcli` the name of this docker image

### Help

You can supply any number of kpcli arguments that will be passed through unmodified.

```bash
$ docker run -it --rm clue/kpcli --help
```

### KeePass file

If you mount a file to `/data/keepass.kdb` (as in the above example),
it will automatically be `open`'ed as the KeePass file.
You can supply any other path like this:

```bash
--kdb=/data/keepass.kdb
```

### Key file

If you mount a file to `/data/keepass.key`,
it will automatically be used as a key file.
You can supply any other path like this:

```bash
--key=/data/keepass.key
```

