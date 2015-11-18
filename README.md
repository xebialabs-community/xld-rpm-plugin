# RPM plugin #

This document describes the functionality provided by the RPM plugin.

See the **XL Deploy Reference Manual** for background information on XL Deploy and deployment concepts.

# Overview #

The RPM plugin is an XL Deploy plugin allows to package RPM files and deploy them, either on a Host, either on a rpm.Container.

##Features##

* Install the RPM package
* Upgrade the RPM package
* Remove the RPM package

# Requirements #

* **XL Deploy requirements**
	* **XL Deploy**: version 5.0+

# Usage #

The plugin works with the standard deployment package of DAR format. Please see the _Packaging Manual_ for more details about the DAR format and the ways to 
compose one. 

* For yum
    * Infrastructure:
        * Create a container under an `overthere.Host` of type `rpm.Container` with `installationType` set to `yum`
    * Environment
        * Create an `Environment` containing the `rpm.Container` as a member.
    * Applications
        * Create an Application
        * Create a Deployment Package under the Application.
        * Add for each package to be installed a `rpm.PackageSpec`
    * Start deploying.