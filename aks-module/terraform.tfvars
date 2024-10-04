trigger:
  branches:
    include:
      - main

pool:
  vmImage: 'ubuntu-latest'

steps:
# Step 1: Install Terraform
- task: TerraformInstaller@0
  inputs:
    terraformVersion: 'latest'

# Step 2: Terraform Initialization with -reconfigure
- task: TerraformTaskV2@2
  inputs:
    provider: 'azurerm'
    command: 'init'
    backendServiceArm: 'Shail-Conn'  # Replace with the correct service connection name
    backendAzureRmResourceGroupName: 'myStorageResourceGroup'
    backendAzureRmStorageAccountName: 'mystorageaccount'
    backendAzureRmContainerName: 'tfstate'
    backendAzureRmKey: 'aks-cluster/terraform.tfstate'
    commandOptions: '-reconfigure'
    workingDirectory: '$(System.DefaultWorkingDirectory)/aks-module'
    environmentServiceNameAzureRM: 'Shail-Conn'  # Correct parameter for service connection

# Step 3: Terraform Plan using tfvars file
- task: TerraformTaskV2@2
  inputs:
    provider: 'azurerm'
    command: 'plan'
    workingDirectory: '$(System.DefaultWorkingDirectory)/aks-module'
    commandOptions: '-var-file="terraform.tfvars"'
    environmentServiceNameAzureRM: 'Shail-Conn'  # Correct parameter for service connection

# Step 4: Terraform Apply using tfvars file
- task: TerraformTaskV2@2
  inputs:
    provider: 'azurerm'
    command: 'apply'
    workingDirectory: '$(System.DefaultWorkingDirectory)/aks-module'
    commandOptions: '-var-file="terraform.tfvars" -auto-approve'
    environmentServiceNameAzureRM: 'Shail-Conn'  # Correct parameter for service connection
