# Blender #

This project installs and configures the Blender 3D Rendering toolkit for batch rendering.
It includes an example cluster template which installs Blender alongside SGE.

See [Blender](https://www.blender.org/) for details and documentation.

**NOTE** This project does not **yet** include a VDI client for the Blender UI.

<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-generate-toc again -->

**Table of Contents**

- [IBM Spectrum Symphony](#ibm-spectrum-symphony)
    - [Pre-Requisites](#pre-requisites)
    - [Configuring the Project](#configuring-the-project)
    - [Deploying the Project](#deploying-the-project)
    - [Importing the Cluster Template](#importing-the-cluster-template)
    - [Using the Project Specs in Other Clusters](#using-the-project-specs-in-other-clusters)

<!-- markdown-toc end -->


## Pre-Requisites ##


This sample requires the following:

  1. The Blender installation binaries for Linux
  
     a. Download the binaries from [Blender Downloads](https://www.blender.org/download/) and place them in the `./blobs/` directory.
     b. If the version is not 2.79b (the project default), then update the version number in the Files list
        in `./project.ini` and in the cluster template: `./templates/blender.txt`
     
  3. CycleCloud must be installed and running.

     a. If this is not the case, see the CycleCloud QuickStart Guide for
        assistance.

  4. The CycleCloud CLI must be installed and configured for use.

  5. You must have access to log in to CycleCloud.

  6. You must have access to upload data and launch instances in your chosen
     Cloud Provider account.

  7. You must have access to a configured CycleCloud "Locker" for Project Storage
     (Cluster-Init and Chef).

  8. Optional: To use the `cyclecloud project upload <locker>` command, you must
     have a Pogo configuration file set up with write-access to your locker.

     a. You may use your preferred tool to interact with your storage "Locker"
        instead.


## Configuring the Project ##


The first step is to configure the project for use with your storage locker:

  1. Open a terminal session with the CycleCloud CLI enabled.

  2. Switch to the blender directory.

  3. Copy the installer to `./blobs`
    * blender-2.79b-linux-glibc219-x86_64.tar.bz2

  4. If the version number is not 2.79b, update the version numbers in `project.ini` and `templates/blender.txt`
    

## Deploying the Project ##


To upload the project (including any local changes) to your target locker, run the
`cyclecloud project upload` command from the project directory.  The expected output looks like
this:

``` bash

   $ cyclecloud project upload my_locker
   Sync completed!

```


**IMPORTANT**

For the upload to succeed, you must have a valid Pogo configuration for your target Locker.


## Importing the Sample SGE Cluster Template ##


To import the cluster:

 1. Open a terminal session with the CycleCloud CLI enabled.

 2. Switch to the Blender directory.

 3. Run ``cyclecloud import_template sge-blender -f templates/sge-blender.txt``.
    The expected output looks like this:
    
    ``` bash
    
    $ cyclecloud import_template SGE-Blender -f templates/sge-blender.txt
    Importing template SGE-Blender....
    ------------------------
    SGE-Blender : *template*
    ------------------------
    Keypair: $Keypair
    Cluster nodes:
        master: off
    Total nodes: 1
    ```


