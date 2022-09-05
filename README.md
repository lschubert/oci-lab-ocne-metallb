# oci-lab-ocne-metallb
Automation to set up OCNE with MetalLb in Oracle provided free lab environment (https://luna.oracle.com/lab/d931637d-4e6b-4a46-ba17-810a942c4309)

At the time this code was created the lab timeslot is limited to 1,5 hours. This automation code is inteded to execute the lab steps to save some time.

This automation is best executed within the Luna Lab environment using Visual Studio Code.

# Pre-Requisites on execution machine
- git client, ansible installed
    - verify with ```git version``` and ```ansible --version```

# Instructions to setup

1. Launch Lab

    1.1. Wait until the lab ressources are provisioned. Setting up the underlying OKE cluster as pre-requisite is part of the free lab provisioning process and takes approximately > 10 minutes to finish after launch. Unlike other Luna Labs, the Resources Tab on Luna Lab page does only show a checkmark once provisioning is finished (no resource details) 

2. Checkout this git repo in Luna Lab Visual Studio Code

    2.1 Open Visual Studio Code. Select Topmost left Icon ("Explorer") and press "Clone Repository" button.
    
    Provide github URL: https://github.com/lschubert/oci-lab-ocne-metallb.git
    
    Select "Open Folder" and choose the local path of cloned repo

# About this Luna Lab environment

1. An OCNE Cluster will be provisioned with 

* 1 Operator Node (ocne-operator)
* 3 Control plane Nodes / Kubernetes Master Nodes (ocne-control01, ocne-control02, ocne-control03)
* 3 Worker Nodes (ocne-worker01, ocne-worker02, ocne-worker03)


## Versions

| Component  | Version |
|------------|---------|
| OCNE       | 1.5     |
