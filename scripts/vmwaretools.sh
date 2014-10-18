#!/bin/sh
#
# Install VMware tools from the vmware tools repo
# /etc/yum.repos.d/vmware-tools.repo

REPO=`cat <<-END
[vmware-tools]
name = VMware Tools
baseurl = http://packages.vmware.com/packages/rhel7/x86_64/
gpgkey=http://packages.vmware.com/tools/keys/VMWARE-PACKAGING-GPG-RSA-KEY.pub
enabled = 1
gpgcheck = 1
END
`

echo "$REPO" >> /etc/yum.repos.d/vmware-tools.repo

yum clean all
# reload yum.repos.d
yum check-update
# install the package
yum install open-vm-tools -y
