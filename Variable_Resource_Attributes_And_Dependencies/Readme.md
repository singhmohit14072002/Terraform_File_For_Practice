- We can also pass the variable using ``` terraform apply -var "ami=ami-088w759whfsgfshfdgs" -var "instance_type=t2.micro" ``` using this we can pass as many variable we want.

- We can also make use of environment variable> This can be done by exporting the values to TF_VAR_name where TF_VAR is an upper case. ``` export TF_VAR_instance_type="t2.micro" ```

- We can also declare variables in bulk by use of variable definition files like this. ``` variable.tfvars ```

- If the variable definition file is called terraform.tfvars 0r terraform.tfvars.json, or by any name that is ending with auto.tfvars or auto.tfvars.json, then they will be automatically loaded by terraform. However, if you use any other name for this file such as variable.tfvars thenwe have to pass along with the command line flag called -var-file like this.

- If we use multiple ways to assign values for the same variavle terraform follow a variavle definition precedence to unferstand which valye it should exit. Terraform first  loads the environment varibles and then it loads values in the terraform.tfvars file this is followed by the variables in files ending with dot. 

- variable definition precedence

```
1. export TF_VAR_type="t2.nano"
2. terraform.tfvars
3. variable.auto.tfvars
4.terraform apply -var "type=t2.micro"

```

#### The Terraform language uses the following types for its values:

- string: a sequence of Unicode characters representing some text, like "hello".
- number: a numeric value. The number type can represent both whole numbers like 15 and fractional values like 6.283185.
- bool: a boolean value, either true or false. bool values can be used in conditional logic.
- list (or tuple): a sequence of values, like ["us-west-1a", "us-west-1c"]. Identify elements in a list with consecutive whole numbers, starting with zero.
- set: a collection of unique values that do not have any secondary identifiers or ordering.
- map (or object): a group of values identified by named labels, like {name = "Mabel", age = 52}.
Strings, numbers, and bools are sometimes called primitive types. Lists/tuples and maps/objects are sometimes called complex types, structural types, or collection types. See Type Constraints for a more detailed description of complex types.

 Finally, there is one special value that has no type:

- null: a value that represents absence or omission. If you set an argument of a resource to null, Terraform behaves as though you had completely omitted it — it will use the argument's default value if it has one, or raise an error if the argument is mandatory. null is most useful in conditional expressions, so you can dynamically omit an argument if a condition isn't met.


#### Resource vs data Source
```
keyword: resource 
in resource we can create , update, destroy infrastructure and also called managed resources

```

```
keyword: data
only Reads infrastructure also called Data Resources.

```

