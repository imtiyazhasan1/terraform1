resource "aws_iam_user" "demo" {
   count = length(var.usr_name) 
   name = var.usr_name[count.index]
 tags = {
   name = "imtiyaz"
   env  = "prod"
   version = "1.4"
   security = "1-z"

}
}
