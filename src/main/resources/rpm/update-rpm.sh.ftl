<#--

    THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
    FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.

-->
set -e
<#if !deployed.timeout?? || deployed.timeout <= 0>
    # In case no timeout is defined, or lte zero
    <#if previousDeployed.packageName == deployed.packageName>
        ${deployed.container.installationType} -y update ${deployed.packageName}
    <#else>
        ${previousDeployed.container.installationType} -y remove ${previousDeployed.packageName}
        ${deployed.container.installationType} -y install ${deployed.packageName}
    </#if>
<#else>
    # In case a timeout is defined
    <#if previousDeployed.packageName == deployed.packageName>
        timeout ${deployed.timeout} ${deployed.container.installationType} -y update ${deployed.packageName}
    <#else>
        timeout ${deployed.timeout} ${previousDeployed.container.installationType} -y remove ${previousDeployed.packageName}
        timeout ${deployed.timeout} ${deployed.container.installationType} -y install ${deployed.packageName}
    </#if>
</#if>
