trigger:
  branches:
    include:
      - main

pool:
  vmImage: 'ubuntu-latest'

variables:
  - name: 'azureSubscription'
    value: 'Shail-Conn'  # Ensure this matches your Azure service connection name

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
    backendServiceArm: 'Shail-Conn'  # Ensure this matches your service connection name
    backendAzureRmResourceGroupName: 'myStorageResourceGroup'
    backendAzureRmStorageAccountName: 'mystorageaccount'
    backendAzureRmContainerName: 'tfstate'
    backendAzureRmKey: 'aks-cluster/terraform.tfstate'
    commandOptions: '-reconfigure'  # Reinitialize backend
    workingDirectory: '$(System.DefaultWorkingDirectory)/aks-module'  # Set working directory to `aks-module`
    azureSubscription: 'Shail-Conn'  # Correct parameter for service connection

# Step 3: Terraform Plan using tfvars file
- task: TerraformTaskV2@2
  inputs:
    provider: 'azurerm'
    command: 'plan'
    workingDirectory: '$(System.DefaultWorkingDirectory)/aks-module'  # Adjust path if necessary
    commandOptions: '-var-file="terraform.tfvars"'
    azureSubscription: 'Shail-Conn'  # Correct parameter for service connection

# Step 4: Terraform Apply using tfvars file
- task: TerraformTaskV2@2
  inputs:
    provider: 'azurerm'
    command: 'apply'
    workingDirectory: '$(System.DefaultWorkingDirectory)/aks-module'  # Adjust path if necessary
    commandOptions: '-var-file="terraform.tfvars" -auto-approve'
    azureSubscription: 'Shail-Conn'  # Correct parameter for service connection
