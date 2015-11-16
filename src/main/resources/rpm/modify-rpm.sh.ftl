<#--

    THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
    FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.

-->
echo "Querying whether the RPM ${deployed.name} is installed on host"
rpm -q ${deployed.name}
res=$?
if [ $res != 0 ] ; then
	echo "Package is not already installed, Cannot perform upgrade."
	exit $res
fi
echo "Upgrading ${deployed.name}"
rpm -U ${deployed.file}