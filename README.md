# docker-cron
minimal crontab container

![Trueosiris Rules](https://img.shields.io/badge/trueosiris-rules-f08060)
[![Docker Pulls](https://badgen.net/docker/pulls/trueosiris/cron?icon=docker&label=pulls)](https://hub.docker.com/r/trueosiris/cron/)
[![Docker Stars](https://badgen.net/docker/stars/trueosiris/cron?icon=docker&label=stars)](https://hub.docker.com/r/trueosiris/cron/)
[![Docker Image Size](https://badgen.net/docker/size/trueosiris/cron?icon=docker&label=image%20size)](https://hub.docker.com/r/trueosiris/cron/)
![Github stars](https://badgen.net/github/stars/trueosiris/docker-cron?icon=github&label=stars)
![Github forks](https://badgen.net/github/forks/trueosiris/docker-cron?icon=github&label=forks)
![Github issues](https://img.shields.io/github/issues/TrueOsiris/docker-cron)
![Github last-commit](https://img.shields.io/github/last-commit/TrueOsiris/docker-cron)

```
docker run -d -v /path/on/host:/etc/crond.d trueosiris/cron
```

example tree of /path/on/host/croncontainer/crond.d/
├── 15min <br>
│   └── echo_date.sh <br>
├── daily <br>
├── hourly <br>
├── min <br>
├── monthly <br>
└── weekly

content of echo_date.sh
```
#!/bin/sh
date
``` 

PS: /bin/bash is not installed.
