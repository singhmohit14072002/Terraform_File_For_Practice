resource "aws_dyanmodb_table" "payroll_db" {
    name= "user_data"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "EmployeeID"

    atrribute {
        name = "EmployeeID"
        type = "N"
    }
}