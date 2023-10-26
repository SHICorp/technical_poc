# Exercise: Automating Web App Deployment in Azure

## General Thoughts

1. **Relax and Breath**
2. Do not be afraid to ask questions.
3. The assessment is conducted with resources available; you may use Google and refer to online documentation. However, it is important to note that while using ChatGPT is not strictly prohibited, its usage should be limited. The main focus of this exercise is to gauge your understanding and skills in Azure and Terraform, rather than your ability to utilize ChatGPT.
4. Do not over complicate the solution. This exercise is not meant to be a bullet-proof production ready solution. Instead, you should think of it as proof-of-concept.

## Objective

### Pre-requisites

1. Clone <https://github.com/SHICorp/technical_poc>
2. Create new branch using the following format: `FirstNameLastNameYYYYMMDD`. For Example: `janesmith20230720`.
3. Work w/ interviewer to get access to the Azure SHI Lab Subscription
   - The interviewer will invite your to the SHI Lab Subscription using a personal email address you provide. The email address provided should be associated with a Microsoft Account.
4. Use the Azure CLI to set up access to the Azure SHI Lab Subscription

**Exercise Details:**

1. **Infrastructure-as-Code (IaC) Setup**:
   - Use Terraform to create an Azure App Service plan and an App Service that can host a web application and supporting resources

## Extra Credit

1. **Monitoring Setup**: Set up Azure Application Insights for the App Service and configure it to monitor:
   - Server response time
   - Request rate
   - Failed requests
   - Exceptions

> Please explain how you would configure alerts in Azure Monitor for conditions like a high server response time or high rate of failed requests.

2. **Autoscaling**: Lastly, the candidate should set up autoscaling rules for the App Service Plan. This should include scaling out when CPU usage is high for a specified duration and scaling in when CPU usage is low.

To conclude, please walk through your solution, explaining your choices and how the the implementation works.
