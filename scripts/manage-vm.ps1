# Azure VM Management
# Author: Megala

Connect-AzAccount

$ResourceGroupName = "rg-megala-azure-lab"
$VMName = "win-demo-vm"

# Check VM status
$VM = Get-AzVM `
    -ResourceGroupName $ResourceGroupName `
    -Name $VMName `
    -Status

Write-Host "VM Name: $VMName"

$VM.Statuses |
    Select-Object Code, DisplayStatus

# To start the VM:
# Start-AzVM -ResourceGroupName $ResourceGroupName -Name $VMName

# To stop the VM:
# Stop-AzVM -ResourceGroupName $ResourceGroupName -Name $VMName -Force
