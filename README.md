# Docker image for [Docmosis Tornado](https://www.docmosis.com/products/tornado.html)

## Dockerfile links
* 2.4, [Dockerfile](https://github.com/kunalrao/docker-docmosistornado/raw/2.4/Dockerfile)

## How to run?
* docker run -ti -p 8090:8090 kunalrao/docmosis-tornado:2.4

## To build and run
* docker build -t docmosis-tornado .
* docker run -ti -p 8090:8090 --name=docmosis-tornado -v $PWD/templates:/projects/tornado/templates:ro docmosis-tornado:latest

## To configure:
* go to http://localhost:8090
* Provide license info (get a trial license from Docmosis)
* Set Open/Libre Office location to /usr/lib64/libreoffice
* Go to Status and restart server
