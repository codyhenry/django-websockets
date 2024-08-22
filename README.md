
# Django Web Sockets Demo

Project used as a base to incorporate websockets into django projects




## Installation

This project uses dev-containers and Dockerfiles. You can either set up the app through dev-containers or through Docker. There are multiple Dockerfiles and docker-compose files. Both methods will give you a local network with a postgres database. If you are not using dev-containers, you can ignore the .devcontainer folder.

### Dev-container Setup

1. Run "Dev Containers: Clone Repository in Container Volume..." from the VSCode Command Palette.
2. Select this repository to clone. 
3. Once cloned, the commands to install all dependencies, add important VSCode extensions, and configure the Docker environment are executed automatically.  
4. Because dev-containers are intended to create a development environment, we do not automatically migrate the database or start the server. You must run those commands manually
```bash
  cd socketsdemo
  python manage.py makemigrations
  python manage.py migrate
```
5. Execute python manage.py runserver from the socketsdemo directory
```bash
  cd socketsdemo
  python manage.py runserver
```
6. The django server should be accessed at url given. Typically this won't be localhost
```bash
http://0.0.0.0:8000/
```
7. Remember to File > Close Remote Connection when finished

### Docker Setup
**This Method does not install recommended VSCode extensions**
1. Clone repository to local directory
2. From the root directory, execute the command docker-compose up
```bash
  docker-compose up --build
```
**Note:** Docker will install all dependencies automatically and start the server
6. The django server should be accessed at url given. Typically this won't be localhost
```bash
http://0.0.0.0:8000/
```
4. Remember to execute the command docker-compose down -v when finished
