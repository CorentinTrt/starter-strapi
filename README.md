# Starter Strapi (v4.6.1)

- This starter is based on docker to develop, deploy and serve a Strapi application
- I think the best practice here is to duplicate this template and then directly deploy it on your host server and work from there
- It's not very convenient to work localy and then use versioning to keep your data type. Moreover, your database could be wiped due to the instability of Docker's volumes
- We are using Makefile to run Docker scripts

### Develop

1. Get your `.env` file and set the `NODE_ENV` variable to `development`
2. Generate the `API_KEYS`, `API_TOKEN_SALT`, `ADMIN_JWT_TOKEN` and `JWT_SECRET` variables according to Strapi reco
3. Start your application with autoReload enable by runnning:
```sh
$ make docker-dev
```

### Deploy

1. Get your `.env` file and set `NODE_ENV` variable to `production`
2. Use environment variables generate while developing
3. Once you put your Strapi application on the hosting server, you can run it by doing:
```sh
$ make docker-prod
```
## Warnings

- Please make sure to backup your database, docker's volumes can be unstable and result to a loss of data
- Please make sure to delete your `node_modules` folder before any run
- You cannot keep your data between `development` and `production` environments
