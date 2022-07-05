# CIO Portfolio Dashboard System Service

## Getting Started

### Prerequisites

* [Java](https://www.oracle.com/java/technologies/javase/jdk11-archive-downloads.html) version 11
* [maven](https://maven.apache.org/install.html)

## Run Application

You can run application by 2 way `mvn` and `Makefile`.

_run with `mvn` following command below._
```sh
mvn spring-boot:run
```

_run with `Makefile` following command below._
```sh
make mvn-run
```

After you running application, you can health check at [health-check](http://localhost:8080/api/v1/health-check) 

## Build Application
You can run application by 2 way `mvn` and `Makefile`.

_build with `mvn` following command below._
```sh
mvn clean package
```

_build with `Makefile` following command below._
```sh
make mvn-build
```

## Use Docker

You use a `Docker` for `build`,`run` application.

### Build Application Step

_build with `Docker` following command below._
```sh
docker build -t registry.gitlab.com/saraff1/ais/cio-portfolio-dashboard-system-service .
```

_with `Makefile` following command below._
```sh
make docker-build
```

### Run Application Step
_run with `Docker` following command below._
```sh
docker run -d -p 8080:8080 -t registry.gitlab.com/saraff1/ais/cio-portfolio-dashboard-system-service
```

_run with `Makefile` following command below._
```sh
make docker-run
```