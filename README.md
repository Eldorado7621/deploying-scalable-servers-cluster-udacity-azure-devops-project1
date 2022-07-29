# UDACITY AZURE DEVOPS PROJECT 1
<hr>
## Introduction
This is the first project of the Udacity Azure Devops Nanodegree course. In this project, you will write a Packer template to create image and the image would be used by a Terraform code to deploy customizable and scalable web server in Azure.

## Getting Started
Before you start, you would need to:
1. Clone this project
2. Add the following azure login credentials variables to your .bashrc file:<br>
    i.   `export CLIENT_ID=XXX`
    ii.  `export CLIENT_SECRET=XXX`
    iii. `export TENANT_ID=XXX`
    iv.  `export SUSCRIPTION_ID=XXX`
 
 ## Dependencies
In order to be able to use this project, you need to:
1. Create an Azure account
2. Install Azure CLI
3. Install Packer
4. Install Terraform

## Instructions
1. Make sure to login to Azure CLI using
`az login`
2. Deploy an Azure policy that ensures that all resources are tagged
* Create the azure policy definition by runnning the tag_policy.json file
`az policy definition create --name tagging-policy --rules tag_policy.json`
* Create policy assignment
`az policy assignment create --policy tagging-policy`
3. Using Packer template, create image. The packer file is named server.json
`packer build server.json`
4. Deploy Azure resources using terraform. The Terraform script uses the image deployed by packer
`terraform plan -out tfplan.out`
`terraform apply "tfplan.out"`
5. Do not forget to destroy all resources that have been created
`terraform destroy`
`az image delete -g packer-rg -n project1-packer-image`
