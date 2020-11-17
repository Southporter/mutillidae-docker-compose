# Docker Compose for Mutillidae
A collection of files for running [mutillidae](https://github.com/webpwnized/mutillidae) locally with Docker.

### Prerequisits
This repo requires you to have [docker](https://docs.docker.com) and [docker-compose](https://docs.docker.com/compose/) installed.


### Running
Start the service by running `docker-compose up`. The first time you run this it may take a while. 

Once it is running, open `http://localhost/mutillidae` in your browser. You should be good to go from there.


### Tear Down
Once you are done running and no longer want these files on your machine, run `docker-compose rm`.