<#--

    THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
    FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.

-->
set -e
<#if !deployed.timeout?? || deployed.timeout <= 0>
# In case no timeout is defined, or lte zero
${deployed.container.installationType} -y install ${deployed.packageName}
<#else>
# In case a timeout is defined
timeout ${deployed.timeout} ${deployed.container.installationType} -y install ${deployed.packageName}
</#if>