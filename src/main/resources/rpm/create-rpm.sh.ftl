<#--

    THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
    FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.

-->
echo "Querying whether the RPM ${deployed.file.name} is installed on host"
rpm -q ${deployed.file.name?replace(".rpm", "")}
res=$?
if [ $res != 1 ] ; then
	echo "Package is already installed"
	exit 1000
fi
echo "Installing ${deployed.name}"
rpm -i ${deployed.file.path}
