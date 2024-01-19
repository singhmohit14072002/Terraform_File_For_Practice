module "us-payroll" {
    source = "../modules/payroll-app"
    app_region  = "us-east-1"
    ami = "ami-24w828002iryso"
}