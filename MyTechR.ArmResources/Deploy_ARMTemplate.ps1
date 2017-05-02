param(
    [Parameter(Mandatory=$true)]
    [ValidateSet("TechRadarRsxGroup")]
    $resourceGroupName
    )

Login-AzureRmAccount
New-AzureRmResourceGroup -Name $resourceGroupName -Location "West Europe"
New-AzureRmResourceGroupDeployment -Name myTechRdrDeploy -ResourceGroupName $resourceGroupName -TemplateFile .\AzureDeploy.json

#Remove-AzureRmResourceGroup -Name $resourceGroupName
