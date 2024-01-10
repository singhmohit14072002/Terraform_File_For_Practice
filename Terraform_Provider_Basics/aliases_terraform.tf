resource "aws_key_pair" "alpha" {
    key_name = "alpha"
    public_key = "ssh-rsa AAAAAAABNBKDFJHDS@$#$%^^&77889998jjhksdhfkashBBBBB hhoihkghoighooo@a-server"
}

resource "aws_key_pair" "beta" {
    key_name = "beta"
    public_key = "ssh-rsa AAJGDOIHD*HBGHD7797979756678HNGUuguguigibi"
    provider = aws.central
  
}