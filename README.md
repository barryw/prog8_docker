      ____                   ___
     |  _ \ _ __ ___   __ _ ( _ )
     | |_) | '__/ _ \ / _` |/ _ \
     |  __/| | | (_) | (_| | (_) |
     |_|   |_|  \___/ \__, |\___/
                      |___/

#### Introduction

This is a Docker image for running the Prog8 compiler. The Prog8 language is a C-like language for the Commodore 64 and Commander X16 8-bit machines.

More information can be found here: https://github.com/irmen/prog8

#### How do I use this image?

Very easily:

```bash
docker run -v ${PWD}:/code barrywalker/prog8:latest /code/helloworld.p8 -out /code
```

This will mount your current directory to `/code`, compile the prog8 file `helloworld.p8` and deposit the artifacts back to your current working directory.
