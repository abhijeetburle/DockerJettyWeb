Web-Application on Jetty on Docker
=================
Project structure
This is a example project showing use of docker & docker compose to start a Jetty and deploy your application.
```
      /
      |-- docker-compose.yml    Docker compose file
      |-- Dockerfile            Docker file
      |-- deployments
              |-- webapps       Place your awesome Jar's here
                    |-- CaptainsLog.war  Sample application (you can remove/replace this) 
```
You need to install Docker on your machine
Checkout this git project and run the following commands

## How to build and run
     $ docker-compose up -d --build
   
   Access your application using [CaptainsLog] (http://127.0.0.1/CaptainsLog) 
   NOTE: If 127.0.0.1 doesnt work please replace it with your machines ip

## How to connect to the container
     $ docker exec -it c4i-web sh

## How to stop
     $ docker-compose stop

## How to remove the container
     $ docker-compose rm

## How to remove the image
     $ docker rmi jetty_web

## Author
Abhijeet Burle

## LICENSE
Copyright 2016 Abhijeet Burle

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
