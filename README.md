# Packer-Images
Ubuntu 20.04 Packer Templates for AWS, Azure, GCP and vSphere

# INIT

```
 make init
```

or 

```
packer init . 
```
# BUILD

```
 make build VARS_FILE=<path_to_var_file>
```

or

```
packer build --var-file=vars.pkrvars.hcl .
```

# AMAZON

```
packer build -var-file ./vars/awsvars.pkvars.hcl -var "access_key=<access_key>" -var "secret_key=<secret_key>" -var "role_arn=<arn>" .
```