# Angelo Self Hosted CI/CD Website

**Production:** https://angelobustamanteselfhost.com

**QA:** https://qa.angelobustamanteselfhost.com

## Deployment Process

This project uses GitHub Actions, Docker, GitHub Container Registry, DigitalOcean, and Traefik.

Pushes to the `qa` branch automatically validate the website, build and test a Docker image, push the image to GitHub Container Registry, and deploy it to the QA environment.

Changes are promoted to production by merging the `qa` branch into `main`. Pushes to `main` automatically deploy the production environment.

If validation, the Docker build, or the container test fails, deployment does not occur.

## Test Evidence

### QA Workflow

Successful workflow run:

ADD QA WORKFLOW LINK HERE

Deployed commit/image:

ADD QA COMMIT SHA HERE

### Production Workflow

Successful workflow run:

ADD PRODUCTION WORKFLOW LINK HERE

Deployed commit/image:

ADD PRODUCTION COMMIT SHA HERE

### Container Registry

https://github.com/ab2737/angelo-selfhost-cicd/pkgs/container/angelo-selfhost-cicd

### SSH Security

The DigitalOcean server uses the non-root `deploy` account with SSH-key authentication.

Direct root SSH login and password authentication are disabled.

Effective SSH settings:

- `PermitRootLogin no`
- `PasswordAuthentication no`
- `KbdInteractiveAuthentication no`
- `PubkeyAuthentication yes`

Screenshots demonstrating SSH-key login and the hardened SSH configuration will be included as evidence.

### QA to Production Test

A visible website change will first be deployed to:

https://qa.angelobustamanteselfhost.com

After verification, the `qa` branch will be merged into `main` and the same change will be deployed to:

https://angelobustamanteselfhost.com
