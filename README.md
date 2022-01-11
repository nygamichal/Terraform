# Terraform
**Basic commands:**
**COMMAND** | **DESCRIPTION**
------------- | -------------
_init_ | init catalog .terraform. Must be run to start working with a new catalog and changes of provider. Download provider dependencies from the internet.
_plan_ | Show what will be done when we will use command “apply”
_validate_ | Check if everything is ok with the code.
_apply_ | Create infrastructure.
_destroy_ | Destroy infra.
_show_ | Show actual state of infra.
_state list_ | Show list of used resources.
_taint <resource>_ | Set flag **TAINT** on resource. Resources with the **TAINT** flag will be created again during usage of **APPLY**.


**Good practices**:
- Name file as "main.tf"
- -auto-approve :)

  
 **terraform.tfstate / terraform.tfstate.backup**
  <br>contains configration backup after terraform apply/destroy
  
