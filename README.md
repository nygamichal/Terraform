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
* `cd aws`
* `terraform init`
* `terraform plan -var-file example.tfvars`
* `terraform apply -var-file example.tfvars -auto-approve`
<br>
* `watch -n 1 curl -s alb-xxxxxxxxx.us-east-1.elb.amazonaws.com`

---

* `terraform destroy -var-file example.tfvars -auto-approve`