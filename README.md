## Packer-Images

Ubuntu 20.04 Packer Templates for AWS

## Prerequisites
Before you begin, make sure you have the following:

- Packer installed on your system 
- Access to a AWS API
- A valid API key or access credentials for AWS
- Basic knowledge of YAML or JSON

## Configure and Build Your Image

Use `make init` or `packer init` command for initialize.

Use `make build VARS_FILE=<path_to_var_file>` or `packer build --var-file=vars.pkrvars.hcl .` command for build.


Repo's Default AWS configurations like this
```
packer build -var-file ./vars/awsvars.pkvars.hcl -var "access_key=<access_key>" -var "secret_key=<secret_key>" -var "role_arn=<arn>" .
```