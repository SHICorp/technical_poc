# Exercise: Automating Web App Deployment with Monitoring Setup on Azure

## General Thoughts

1. **Relax and Breath** - Please understand that due to the limited time constraint, this exercise is meant to challenge you.
2. Do not be afraid to ask questions.
3. The exercise is "open book." Google and internet documentation are allowed.
4. Do not over complicate the solution. This exercise is not meant to be a bullet-proof production ready solution. Instead, you should think of it as proof-of-concept.

## Objective

Automate the deployment of a web application on Azure, set up application insights for monitoring, and enable autoscaling based on defined rules.

### Pre-requisites

1. Clone <https://github.com/SHICorp/technical_poc>
2. Create new branch using the following format: `FirstNameLastNameYYYYMMDD`. For Example: `janesmith20230720`.

**Exercise Details:**

1. **Infrastructure-as-Code (IaC) Setup**: Use Terraform to create:
   - An Azure App Service plan and an App Service where a simple web application (you can provide a repository with a sample application) will be hosted.
   - An Azure SQL database that will be connected to the App Service for data storage.

2. **Continuous Deployment Configuration**: Configure a Continuous Deployment (CD) pipeline using GitHub Actions. This pipeline should:
   - Be triggered whenever there is a new commit in the main branch.
   - Deploy the web application to the App Service created in step 1.

> Please explain how you would handle environment-specific configurations (like different database connection strings for staging and production).

3. **Monitoring Setup**: Set up Azure Application Insights for the App Service and configure it to monitor:
   - Server response time
   - Request rate
   - Failed requests
   - Exceptions

> Please explain how you would configure alerts in Azure Monitor for conditions like a high server response time or high rate of failed requests.

4. **Autoscaling**: Lastly, the candidate should set up autoscaling rules for the App Service Plan. This should include scaling out when CPU usage is high for a specified duration and scaling in when CPU usage is low.

To conclude, please walk through your solution, explaining your choices and how the the implementation works.
