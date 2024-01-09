#### This command check the all configuration file inside the curretn working directory.
```
terrafom init 
```

#### Plan will generate an execution plan, showing you what actions will be taken without actually performing the planned actions.
```
terraform plan
```


#### Create or update infrastructure depending on the configuration files. By default, a plan will be generated first and will need to be approved before it is applied.

```
terraform apply
```

####  Destroy the infrastructure managed by Terraform.

````
terraform destroy
````


#### Show the state file in a human-readable format.
````
terraform show
````
- ``` terraform show <path to statefile>``` — If you want to read a specific state file, you can provide the path to it. If no path is provided, the current state file is shown.


- ``` terraform state``` — One of the following subcommands must be used with this command in order to manipulate the state file.

  ```terraform state list``` — Lists out all the resources that are tracked in the current state file.

- We can create the other configuration file such as variable.tf , output.tf , provider.tf, main.tf and terraform.tf etc.
  