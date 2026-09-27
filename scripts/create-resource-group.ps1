# Azure Resource Group Creation
# Author: Megala

# Login to Azure
Connect-AzAccount

# Variables
$ResourceGroupName = "rg-megala-azure-lab"
$Location = "Central India"

# Create Resource Group
New-AzResourceGroup `
    -Name $ResourceGroupName `
    -Location $Location

# Display Resource Group
Get-AzResourceGroup -Name $ResourceGroupName
