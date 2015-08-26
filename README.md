###SUSE Enterprise Storage Rapid Deployment Appliance

#####Kiwi Build Setup 
- Install latest kiwi from the Open Build Service

http://download.opensuse.org/repositories/Virtualization:/Appliances/

SLE 12

http://download.opensuse.org/repositories/Virtualization:/Appliances/SLE_12/

openSUSE 13.2

http://download.opensuse.org/repositories/Virtualization:/Appliances/openSUSE_13.2/

openSUSE Leap 42.1

http://download.opensuse.org/repositories/Virtualization:/Appliances/openSUSE_Leap_42.1/

Tumbleweed 

Comes with the lastest version


| Intsall the kiwi packages |
|---------------------------|
|kiwi-tools-7.03.14-1.1.x86_64|
|kiwi-instsource-7.03.14-1.1.x86_64|
|kiwi-7.03.14-1.1.x86_64|
|kiwi-doc-7.03.14-1.1.noarch|
|kiwi-templates-7.03.14-1.1.x86_64|
|kiwi-requires-7.03.14-1.1.noarch|
|kiwi-desc-oemboot-7.03.14-1.1.x86_64|
|kiwi-config-openSUSE-13.2-8.8.1.x86_64|

- Clone this git repo 
```
git clone https://github.com/cseader/ses-flash.git
```

- Edit config.xml to change souce paths to local repos of the same source

This repo is a download of the latest SES2 beta extacted on an installation server.
Note: make sure it points to the suse directory on the media
```
<repository type="rpm-md">
    <source path="http://some_host/install/SES2/suse/"/>
</repository>
```

This is the SLES 12 Server updates repo as mirrored from SMT
```
<repository type="rpm-md">
    <source path="http://some_host/install/smt/repo/SUSE/Updates/SLE-SERVER/12/x86_64/update/"/>
</repository>
```

This is the SLES 12 Product repo as mirrored from SMT
```
<repository type="rpm-md">
    <source path="http://some_host/install/smt/repo/SUSE/Products/SLE-SERVER/12/x86_64/product/"/>
</repository>
```

- Build yourself an image
```
kiwi -b /point/to/the/location/of/git/repo/ -d /location/of/build/destination/ --type oem
```

