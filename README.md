# Starter Strapi

- This starter is based on docker to develop, deploy and serve a Strapi application
- I think the best practice here is to duplicate this template and then directly deploy it on your host server and work from there
- It's not very convenient to work localy and then use versioning to keep your data type. Moreover, your database could be wiped due to the instability of Docker's volumes
- We are using Makefile to run Docker scripts

### Develop

You can start your application with autoReload enable by runnning:
```sh
$ make docker-dev
```

### Deploy

Once you put your Strapi application on the hosting server, you can run it by doing:
```sh
$ make docker-prod
```
## Warnings

- Please make sure to backup your database, docker's volumes can be unstable and result to a loss of data
