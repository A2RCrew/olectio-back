# Olectio Framework Back Office

Olectio Framework management system.

## Execution Instructions

- Configure the .env file
- Install pnpm if not installed
- Run `pnpm i` to install dependencies
- Run `pnpm run dev` to execute the project in development mode


## Setup Instructions

In order to deploy the Back Office as a K8S pod you can generate the image with de `Dockerfile`.

> Note: It is important to note that by default the docker image listens on port 80 of the container (as configured by the environment variable set in the Dockerfile) which is the port that we will map to the service that the ingress controller will point to.

### Database

To carry out the initial testing of the deployment you can keep the configuration as established in these files, pointing remotely to the development database. Once verified that it works correctly, you can use the same credentials configured here to dump the development databases, restore it to your MySQL server and configure the manager to point to this new development.

### Storage

As in the case of the databases, you can connect to the development s3 bucket during testing and later configure your file storage system. Once changed, it is normal that the previously uploaded resources (logos, images, etc...) are not available in the system since it will be necessary to upload them to the new file system, but we can do this remotely with the content manager without need for intervention by the systems team.

## Using the Directus API

Directus offers both a REST and GraphQL API to manage the data in the database. The API has predictable resource-oriented URLs, relies on standard HTTP status codes, and uses JSON for input and output. Check the [API Reference](https://docs.directus.io/reference/introduction.html) for more information.
