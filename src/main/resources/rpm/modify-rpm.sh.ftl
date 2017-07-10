<#--

    THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
    FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.

-->
echo "Querying whether the RPM ${previousDeployed.name} is installed on host"
rpm -q ${previousDeployed.file.name?replace(".rpm", "")}
res=$?
if [ $res != 0 ] ; then
	echo "Package is not already installed, Cannot perform upgrade."
	exit $res
fi
echo "Upgrading ${previousDeployed.name}"
rpm -U ${deployed.file.path}