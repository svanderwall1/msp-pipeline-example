# Mu Pipeline Example

This project is an example of a full deployment using [Stelligent's Mu](http://getmu.io) framework. This deploys a simple Nginx based docker
container with the typical "Hello World" result :)

The purpose of this project is to demonstrate the capabilities of Mu, focusing on configurability, and the DevOps principles
that Mu adheres to, including:

### AWS Best Practices

Mu deploys all of its resources into a Virtual Private Cloud, or VPC. If an existing VPC is not provided, Mu creates one, 
along with requisite resources such as subnets and route tables. It uses sensible defaults to ensure security and proper 
access required for the application.

### Continuous Integration/Continuous Deployment (CI/CD)

Mu generates a CI/CD pipeline using AWS CodePipeline and AWS CodeBuild. The pipeline builds, tests and deploys the application 
on each push to either GitHub or AWS CodeCommit. 

Automated testing is provided by Newman, an end-to-end testing framework 
developed in conjunction with Postman, the API testing tool. Other testing tools can be added as the user desires.

## Deploying

*Important: FORK THS REPO! As CI/CD relies on source control to manage releases, you will want your own copy of this repo
to make and push changes.*

Before you do anything, it is recommended that you read up on the [Mu Documentation](https://github.com/stelligent/mu/blob/develop/README.md)
before continuing.


To deploy, simply run

`mu pipeline up`

to generate your pipeline. Once your pipeline has been deployed, it will take over and pull down the code, build the Docker
image, deploy the Acceptance environment, and deploy the service.

Once deployed, the pipeline will run the tests defined in the `collection.json` file. The execution of those tests are
in the buildspec-test.yml and buildspec-prod.yml files.