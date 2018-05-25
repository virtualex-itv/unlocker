<p align="center"><img src="http://ithinkvirtual.com/wp-content/uploads/2018/03/vmx_itv_bit2.png"></p>

# *unlocker*

A utility which enables the installation of macOS Virtual Machines on non-Apple certified ***VMware vSphere*** *(ESXi)*, ***VMware Workstation/Player*** *(Windows/Linux)*, and ***VMware Fusion*** *(OSX/macOS)* hypervisors.

<p align="left"><img src="http://ithinkvirtual.com/wp-content/uploads/2018/05/2018-05-24_19-02-04.png"></p>

***Note: If you are using an earlier product please continue using Unlocker 1.***

###### Version 2 is designed for and has been tested against:

* VMware Workstation 11/12/14 on Windows and Linux
* VMware Workstation Player 7/12/14 on Windows and Linux
* VMware Fusion 7/8/10 on macOS Sierra/High Sierra
* VMware vSphere (ESXi) 6.5/6.7

The patch code carries out the following modifications dependent on the product being patched:

* Fix vmware-vmx and derivatives to allow macOS to boot
* Fix vmwarebase .dll or .so to allow Apple to be selected during VM creation
* Download a copy of the latest VMware Tools for macOS

**Note: Not all products recognize the darwin.iso via install tools menu item.  
You will have to manually mount the darwin.iso for example on Workstation 11 and Player 7.**

The vmwarebase code does not need to be patched on macOS systems so you will see a message on those systems telling you that it will not be patched.

In all cases make sure VMware is not running, and any background guests have been shutdown.

The code is written in Python as it makes the Unlocker easier to run and maintain on ESXi.

----------
#### Prerequisites
----------

The code requires Python 2.7 to work.  Most Linux distros and macOS ship with a compatible Python interpreter and should work without requiring any additional software.

Windows Unlocker has a packaged version of the Python script using PyInstaller, and so does not require Python to be installed.

----------
#### Limitations
----------

If you are using VMware Player or Workstation on Windows you may get a core dump.

Latest Linux products are OK and do not show this problem.


**IMPORTANT:**

If you create a new VM using version 11, 12 or 13 hardware VMware may stop and create a core dump. There are two options to work around this issue:

1. Change the VM to be HW 10 - this does not affect performance
2. Edit the VMX file and add: `smc.version = "0"`

----------
#### Windows
----------
On Windows you will need to either run `cmd.exe` as Administrator or using Explorer right click on the command file and select *"Run as administrator"*.

1. win-install.cmd   - patches VMware
2. win-uninstall.cmd - restores VMware
3. win-update-tools.cmd - retrieves latest macOS guest tools

----------
#### Linux
---------
On Linux you will need to be either root or use sudo to run the scripts.

You may need to ensure the Linux scripts have execute permissions by running `chmod +x` against the 3 files.

1. lnx-install.sh - patches VMware
2. lnx-uninstall.sh - restores VMware
3. lnx-update-tools.cmd - retrieves latest macOS guest tools

----------
#### macOS
----------
On macOS you will need to be either root or use sudo to run the scripts.  This is really only needed if you want to use client versions of macOS.

You may need to ensure the macOS scripts have execute permissions by running `chmod +x` against the 2 files.

1. osx-install.sh   - patches VMware
2. osx-uninstall.sh - restores VMware

----------
#### ESXi
----------
On ESXi you will need to be root to run the scripts.

You may need to ensure the ESXi scripts have execute permissions by running `chmod +x` against the 2 files.

1. esxi-install.sh   - patches VMware
2. esxi-uninstall.sh - restores VMware

----------
#### Thanks
---------

Thanks to Zenith432 for originally building the C++ unlocker and Mac Son of Knife (MSoK) for all the testing and support.

Thanks also to Sam B for finding the solution for ESXi 6 and helping DrDonk with debugging expertise.  Sam also wrote the code for patching ESXi ELF files and modified the unlocker code to run on Python 3 in the ESXi 6.x environment.

Thanks to DrDonk for all of his contributions

----------
