# RPM plugin #

This document describes the functionality provided by the RPM plugin.

See the **XL Deploy Reference Manual** for background information on XL Deploy and deployment concepts.

# CI status #

[![Build Status][xld-rpm-travis-image] ][xld-rpm-travis-url]
[![Codacy Badge][xld-rpm-codacy-image] ][xld-rpm-codacy-url]
[![Code Climate][xld-rpm-code-climate-image] ][xld-rpm-code-climate-url]

[xld-rpm-travis-image]: https://travis-ci.org/xebialabs-community/xld-rpm-plugin.svg?branch=master
[xld-rpm-travis-url]: https://travis-ci.org/xebialabs-community/xld-rpm-plugin
[xld-rpm-codacy-image]: https://api.codacy.com/project/badge/Grade/29d8d73482ea41f896e1f14137c36fa1
[xld-rpm-codacy-url]: https://www.codacy.com/app/joris-dewinne/xld-rpm-plugin
[xld-rpm-code-climate-image]: https://codeclimate.com/github/xebialabs-community/xld-rpm-plugin/badges/gpa.svg
[xld-rpm-code-climate-url]: https://codeclimate.com/github/xebialabs-community/xld-rpm-plugin



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