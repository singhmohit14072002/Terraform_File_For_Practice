- The plugin install in hidden directory called /.terraform plugins
##### Multiple Providers
- Using multiple providers within the same configuration file allows us to provision resources, even those belong to diffrenet platforms wothin the same configuration.
- Terraform block is used to configure setting related to terraform itself. To make use of specific version of the provider, we need to make use of another block called required providers  inside the terrraform block. We can have multiple arguments to every provider that we want to use.


- Aliases are most commonly used in cases like this where we would lwish to create reaources in different regions for a particular block in the provider.tf file but this time with the region set to CA central one like this. To identify this particular block we have added the argument called alias and gve ir a ligical value such as central to make use  of the provider block with the region set to ca central one for the resource called beta we add a provider arguments is areference to the second provider that we created the ca central oe region and is of the synatx provider_name.alias_name 