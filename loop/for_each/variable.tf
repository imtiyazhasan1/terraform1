variable "usr_name" {
  description = "this is for user name"
  type = list(string)
  default = ["imti","aalia","ahan","hanah","hasan"]
}
output "all_users" {
 value = aws_iam_user.demo
}
output "all_arn" {
 value = values(aws_iam_user.demo)[*].arn
}
