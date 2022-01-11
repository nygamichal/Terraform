# Terraform
COMMAND | DESCRIPTION
------------- | -------------
init | init catalog .terraform. Must be run to start working with a new catalog and changes of provider. Download provider dependencies from the internet.
plan | Show what will be done when we will use command “apply”
validate | Check if everything is ok with the code.
apply | Create infrastructure.
destroy | Destroy infra.
show | Show actual state of infra.
state list | Show list of used resources.
taint <resource> | Set flag **TAINT** on resource. Resources with the **TAINT** flag will be created again during usage of **APPLY**.


