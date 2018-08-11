# docker-jenkins-with-arma3-tools
Dockerized Jenkins with helpful Arma 3-related tools pre-installed

Available from the [Docker Hub](https://hub.docker.com/r/samlex/docker-jenkins-with-arma3-tools/)

# Tools
* [DePBO Tools 0.6.83](https://armaservices.maverick-applications.com/Products/MikerosDosTools/FileBrowserFree)
* [SQFLint 0.3.2](https://github.com/LordGolias/sqf)
* [Warnings Plugin](https://wiki.jenkins.io/display/JENKINS/Warnings+Plugin)
* A custom script to format SQFLint output into a format understood by the included custom Warnings parser

# Usage
The custom formatter can be used in a build step like
```
sqflint -d . | sqflint-formatter.bash
```

The custom format produced can be parsed by adding a "Scan for compiler warnings" post-build stage and selecting the "SQF Lint" parser.
