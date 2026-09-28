# Azure Network Security Group Configuration
# Author: Megala

Connect-AzAccount

$ResourceGroupName = "rg-megala-azure-lab"
$Location = "Central India"
$NSGName = "nsg-megala-windows"

# Create NSG security rules
$RdpRule = New-AzNetworkSecurityRuleConfig `
    -Name "Allow-RDP" `
    -Description "Allow RDP for lab access" `
    -Access Allow `
    -Protocol Tcp `
    -Direction Inbound `
    -Priority 100 `
    -SourceAddressPrefix "*" `
    -SourcePortRange "*" `
    -DestinationAddressPrefix "*" `
    -DestinationPortRange 3389

# Create Network Security Group
$NSG = New-AzNetworkSecurityGroup `
    -ResourceGroupName $ResourceGroupName `
    -Location $Location `
    -Name $NSGName `
    -SecurityRules $RdpRule

# Display NSG
Get-AzNetworkSecurityGroup `
    -ResourceGroupName $ResourceGroupName `
    -Name $NSGName
