Lambda serverless CI/CD 
------------------------

Sampel AWS Code Pipeline using CodeBuild to deploy python 3.6 lambda functions using serverless. 

Requirements
============
This project uses a custom docker image for Amazon linux 2017.09 with Python 3.6 pre-installed and nodejs 8.8.1.
See [DockerHub](https://hub.docker.com/r/onema/amazonlinux4lambda/) for more information.

Usage
=====
Create the cloud formation stack and plug in the given parameters for your repository. 

Copy the `buildspec.yml` and `deploy.sh` files to the root of your repository. 

Your repo must contain a `serverless.yml` in the root of the project. 

That's it! Every time you push something to master it will create/update the test stack. Once the stack has been tested, it can be approved. After approval the stack will deploy to the production stack. 

Reference
============
[Creating a GitHub OAuth token](https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/)
