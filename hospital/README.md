# Hospital by Dimitris


### Problem Definition

A busy hospital has a list of dates that a doctor is available to see patients. Their process is manual and error prone leading to overbooking. They also have a hard time visualizing all of the available time for a doctor for specific dates.


#### Assignment Task

Create a REST API that enables a simple scheduling system that manages doctor availabilities and allows patients to book appointments.

In order to keep project scope as small as possible, you will implement a subset of the API as described in section “Rest API”.

Data Model

Define a set of data models that include:

a way to track and book appointments
a way to track patients
a way to track doctors
a way to track a doctor's working hours and days

#### System Requirements :

- Docker engine (v20.10.20 used)
- Java : 11.0.16 / 17.0.2 (runs also)
- Maven : 3.8.6

#### Instructions :

Unzip the folder

Navigate to project root folder:

    cd hospital

Compose database docker image:

    docker-compose -f docker-compose.yml up -d

* maybe `docker pull testcontainersofficial/ryuk:0.3.0` also needed to run the tests

Build project:

  `mvn clean install -DskipTests`
or
`mvn clean install`  (to build with tests)


Navigate to backend module folder

    cd backend

Start the app

    mvn spring-boot:run


Open browser to visit the swagger page

    http://localhost:8080/

Terminate the server 

    Ctrl+ C


 Author: Dimitris Papadeas
