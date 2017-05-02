param(
    [Parameter(Mandatory=$true)]
    [ValidateSet("TechRadarRsxGroup")]
    $resourceGroupName
    )

$rsxGroupDeployment = "myTechRdrDeploy"
Login-AzureRmAccount
#New-AzureRmResourceGroup -Name $resourceGroupName -Location "West Europe"
#New-AzureRmResourceGroupDeployment -Name $rsxGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile .\AzureDeploy.json
New-AzureRmResourceGroupDeployment -Name $rsxGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile .\AzureDeploy_ContainerRegistry.json

#Remove-AzureRmResourceGroup -Name $resourceGroupName
