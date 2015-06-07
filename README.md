# docker-php-yaf
build the php yaf framework in docker images,

this will useful for developer on Windows development environment

##require
- docker https://docs.docker.com/installation/#installation

##usage
run a php-fpm controller:

    docker run -p 8881:80 -it leozvc/docker-php-yaf

or run on background:

    docker run -p 8881:80 -d leozvc/docker-php-yaf

default index page is phpinfo.

you can mount a volume to the work dir:

    docker run -p 8881:80 -v $your_workdir:/data/workdir  -d leozvc/docker-php-yaf

### Supported tags
see:https://registry.hub.docker.com/u/leozvc/docker-php-yaf/tags/manage/

### More
get more information: https://registry.hub.docker.com/u/leozvc/docker-php-yaf/

## What is Yaf?
Yaf is the PHP framework written in c and built as a PHP extension.

github: https://github.com/laruence/php-yaf

