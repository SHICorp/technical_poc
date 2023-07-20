### DRAFT

**Exercise: Automating Web App Deployment with Monitoring Setup on Azure**

**Objective:** The candidate is to automate the deployment of a web application on Azure, set up application insights for monitoring, and enable autoscaling based on defined rules.

**Exercise Details:**

1. **Infrastructure-as-Code (IaC) Setup**: The candidate should use an Azure Resource Manager (ARM) template or Terraform to create:
   - An Azure App Service plan and an App Service where a simple web application (you can provide a repository with a sample application) will be hosted.
   - An Azure SQL database that will be connected to the App Service for data storage.

2. **Continuous Deployment Configuration**: The candidate should configure a Continuous Deployment (CD) pipeline using Azure DevOps or GitHub Actions. This pipeline should:
   - Be triggered whenever there is a new commit in the main branch.
   - Deploy the web application to the App Service created in step 1.

   They should also explain how they would handle environment-specific configurations (like different database connection strings for staging and production).

3. **Monitoring Setup**: The candidate should then set up Azure Application Insights for the App Service and configure it to monitor:
   - Server response time
   - Request rate
   - Failed requests
   - Exceptions

   They should also set up alerts in Azure Monitor for conditions like a high server response time or high rate of failed requests.

4. **Autoscaling**: Lastly, the candidate should set up autoscaling rules for the App Service Plan. This should include scaling out when CPU usage is high for a specified duration and scaling in when CPU usage is low.

To conclude, ask the candidate to walk through their solution, explaining the choices they made and how their implementation works. This should give you a good sense of their skills and knowledge as an Azure Platform Automation Engineer.
