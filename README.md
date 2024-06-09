# Bikini Suicide Linux

It's pretty much the same as [Suicide Linux](https://github.com/tiagoad/suicide-linux) but when you type a wrong command, it'll spam your terminal with an anime girl in bikini.
If images are not displayed correctly you may have to change the TERM variable in the docker file.

## Running

Simply run:

    docker build --tag 'suicide-linux'
    docker run --rm -it suicide-linux:latest

**This command will not harm your local filesystem.**

## Running (danger mode)

If you're feeling brave, the following command will mount your host filesystem in the docker image:

    docker build --tag 'suicide-linux'
    docker run --rm -it -v /:/host suicide-linux:latest

**This will harm your local filesystem if you mistype a command, be careful.**
