# oci-lab-ocne-metallb
Automation to set up OCNE with MetalLb in Oracle provided free lab environment (https://luna.oracle.com/lab/d931637d-4e6b-4a46-ba17-810a942c4309)

At the time this code was created the lab timeslot is limited to 1,5 hours. This automation code is inteded to execute the lab steps to save some time.

This automation is best executed within the Luna Lab environment using Visual Studio Code.

# Pre-Requisites on execution machine
- git client, ansible installed
    - verify with ```git version``` and ```ansible --version```

# Instructions to setup

1. Launch Lab

    1.1. Wait until the lab ressources are provisioned. Setting up the underlying OKE cluster as pre-requisite is part of the free lab provisioning process and takes approximately 30 minutes to finish after launch. Unlike other Luna Labs, the Resources Tab on Luna Lab page does only show a checkmark once provisioning is finished (no resource details) 

2. Checkout this git repo in Luna Lab Visual Studio Code

    2.1 Open Visual Studio Code. Select Topmost left Icon ("Explorer") and press "Clone Repository" button.
    
    Provide github URL: https://github.com/lschubert/oci-lab-ocne-metallb.git
    
    Select "Open Folder" and choose the local path of cloned repo

3. In Lab Environement Visual Studio Code

    3.1. Select "Terminal > New Terminal"

    3.2.  In Temrinal Window - gather ip addresses from lab enviroment
    ```
    ./get_ips.sh
    ocne_control_ip:
        - 130.61.116.255
        - 130.61.43.211
        - 130.61.229.82
    ocne_operator_ip: 130.61.41.84
    ocne_worker_ip:
        - 130.61.148.252
        - 130.61.47.162
        - 130.61.82.102
    ``` 

    3.3. Open file ```vars/main.yml``` in Visual Studio Code and modify the values for ```ocne_control_ip```, ```ocne_operator_ip``` and ```ocne_worker_ip``` to match the corresponsing IPs from step 3.2

    You can copy the output from ```./get_ips.sh``` and replace the corresponding section at the beginning of ```vars/main.yml```. 

    3.4. Make sure "oci_executor" variable in ```vars/main.yml``` is set to true 

    Save the file.
    
# About this Luna Lab environment

1. An OCNE Cluster will be provisioned with 

* 1 Operator Node (ocne-operator)
* 3 Control plane Nodes / Kubernetes Master Nodes (ocne-control01, ocne-control02, ocne-control03)
* 3 Worker Nodes (ocne-worker01, ocne-worker02, ocne-worker03)


## Versions

| Component  | Version |
|------------|---------|
| OCNE       | 1.5     |
