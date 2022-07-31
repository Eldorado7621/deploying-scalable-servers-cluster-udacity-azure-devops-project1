# UDACITY AZURE DEVOPS PROJECT 1
<hr>
## Introduction
This is the first project of the Udacity Azure Devops Nanodegree course. In this project, you will write a Packer template to create image and the image would be used by a Terraform code to deploy customizable and scalable web server in Azure.

## Getting Started
Before you start, you would need to:
1. Clone this project
2. Add the following azure login credentials variables to your .bashrc file:<br>
    i.   `export CLIENT_ID=XXX` <br>
    ii.  `export CLIENT_SECRET=XXX` <br>
    iii. `export TENANT_ID=XXX` <br>
    iv.  `export SUSCRIPTION_ID=XXX` <br>
 
 ## Dependencies
In order to be able to use this project, you need to: <br>
1. Create an Azure account <br>
2. Install Azure CLI
3. Install Packer
4. Install Terraform

## Instructions
1. Make sure to login to Azure CLI using <br>
`az login`
2. Deploy an Azure policy that ensures that all resources are tagged <br>
* Create the azure policy definition by runnning the tag_policy.json file <br>
`az policy definition create --name tagging-policy --rules tag_policy.json`
* Create policy assignment <br>
`az policy assignment create --policy tagging-policy`
3. Using Packer template, create image. The packer file is named server.json <br>
`packer build server.json`
4. Deploy Azure resources using terraform. The Terraform script uses the image deployed by packer <br>
`terraform plan -out tfplan.out` <br>
`terraform apply "tfplan.out"`
5. Do not forget to destroy all resources that have been created <br>
`terraform destroy` <br>
`az image delete -g packer-rg -n project1-packer-image`


##Acknoledgement
Thanks to [acouprie](https://github.com/acouprie/udacity-azure-project1) for his github resource that helped me when I was stuck
