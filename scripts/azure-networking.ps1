# Azure Virtual Network Configuration
# Author: Megala

Connect-AzAccount

$ResourceGroupName = "rg-megala-azure-lab"
$Location = "Central India"
$VNetName = "vnet-megala-lab"
$SubnetName = "subnet-windows"
$AddressPrefix = "10.10.0.0/16"
$SubnetPrefix = "10.10.1.0/24"

# Create subnet
$Subnet = New-AzVirtualNetworkSubnetConfig `
    -Name $SubnetName `
    -AddressPrefix $SubnetPrefix

# Create Virtual Network
$VNet = New-AzVirtualNetwork `
    -Name $VNetName `
    -ResourceGroupName $ResourceGroupName `
    -Location $Location `
    -AddressPrefix $AddressPrefix `
    -Subnet $Subnet

# Display configuration
Get-AzVirtualNetwork `
    -Name $VNetName `
    -ResourceGroupName $ResourceGroupName
