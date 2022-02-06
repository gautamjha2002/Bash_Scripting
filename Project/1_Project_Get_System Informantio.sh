#!/usr/bin/env bash
systemName=$(uname)
OSName=$(uname -n)
KernalName=$(uname -v)
KernalRelease=$(uname -r)
MachineHardware=$(uname -m)

echo -------------------------------------------------------------------------------------------------
echo
echo "Your system name is ${systemName}"
echo
echo -------------------------------------------------------------------------------------------------
echo
echo "Name of your Operating system is ${OSName}"
echo
echo -------------------------------------------------------------------------------------------------
echo
echo "Your Kernal Version is ${KernalName}"
echo
echo -------------------------------------------------------------------------------------------------
echo
echo "Your kernal release is ${KernalRelease}"
echo
echo -------------------------------------------------------------------------------------------------
echo
echo "Your Machine Hardware is ${MachineHardware}"
echo

echo -------------------------------------------------------------------------------------------------
echo "Information About Your CPU"
echo
lscpu
echo
echo -------------------------------------------------------------------------------------------------

echo "Information about Your USB Controllers"
echo
lsusb
echo -------------------------------------------------------------------------------------------------
echo
echo "Information about Your PCI Devices"
echo -------------------------------------------------------------------------------------------------
echo
lspci
echo -------------------------------------------------------------------------------------------------
echo

echo 
echo 
echo -------------------------------------------------------------------------------------------------
echo
echo "Your File System Information"
echo -------------------------------------------------------------------------------------------------
echo
sudo fdisk -l
echo -------------------------------------------------------------------------------------------------
echo
echo "Information about Your Linux Hardware Component"
echo -------------------------------------------------------------------------------------------------
echo
sudo dmidecode -t memory
