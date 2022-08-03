# Terraform
**Basic commands:**
**COMMAND** | **DESCRIPTION**
------------- | -------------
_init_ | init catalog .terraform. Must be run to start working with a new catalog and changes of provider. Download provider dependencies from the internet.
_fmt_ | Reformat your configuration in the standard style.
_plan_ | Show what will be done when we will use command “apply”
_validate_ | Check if everything is ok with the code.
_apply_ | Create infrastructure.
_destroy_ | Destroy infra.
_show_ | Show actual state of infra.
_state list_ | Show list of used resources.
_taint <resource>_ | Set flag **TAINT** on resource. Resources with the **TAINT** flag will be created again during usage of **APPLY**.
  
  ----------------

**Good practices**:
- Name file as "main.tf"
- -auto-approve :)

  ----------------
 **terraform.tfstate**
  <br>contains configration backup after terraform apply/destroy
  - create after running **terraform apply**.
  - If already exists, actual file will be copied into **terraform.tfstate.backup**, and next replaced by new one.
  - Contains acutal state of infrastructure as it is seen by Terraform.
  - Lost or damanged file provide desync of acutal state seen by Terraform.
  - Could be refreshed by command **terraform refresh ** or filled by **terraform import** (use as a last resort).
  
  
## AWS

Requirments:
AWS CLI
Guide for installation:
* `curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"`
* `unzip awscliv2.zip`
* `sudo ./aws/install`
* `which aws`
* `aws --version`

then:

* `aws configure --profile panda`

Verify the user via:
* `aws sts get-caller-identity --profile panda`


Later on please run below:
* `cd aws`
* `terraform init`
* `terraform validate`
* `terraform plan -var-file example.tfvars`
* `terraform apply -var-file example.tfvars -auto-approve`
* `watch -n 1 curl -s alb-xxxxxxxxx.us-east-1.elb.amazonaws.com`
---
* `terraform destroy -var-file example.tfvars -auto-approve`
  
  ---------
  Logging
  Verbose output logging for terraform commands
  * `export TF_LOG=TRACE`
  disable
  * `export TF_LOG=`
  
  
 Data source - something which already exists
 Resource - something that will be created.
