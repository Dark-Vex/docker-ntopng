
![ntopng](https://camo.githubusercontent.com/58e2a1ecfff62d8ecc9d74633bd1013f26e06cba/687474703a2f2f7777772e6e746f702e6f72672f77702d636f6e74656e742f75706c6f6164732f323031352f30352f6e746f702e706e67)

# docker-ntopng
Built from [ntop.org](http://ntop.org) stable V3.X package

## Introduction

ntopng is a web-based network traffic monitoring application released under GPLv3. It is the new incarnation of the original ntop written in 1998, and now revamped in terms of performance, usability, and features.
This Dockerfile was modified starting from Luca Deri docker (https://github.com/lucaderi/ntopng-docker/)

### Install & Run
```
docker pull darkvex/docker-ntopng
docker run --net=host --name ntopng --net=host -p 3000:3000 -t -i darkvex/docker-ntopng {optional params}
```


### Examples
```
docker run --net=host --name ntopng -p 3000:3000 -t darkvex/docker-ntopng --community -i eth0
docker run --net=host --name ntopng -p 3000:3000 -d --restart=always darkvex/docker-ntopng -i eth0
```

