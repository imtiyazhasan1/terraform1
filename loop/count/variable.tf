variable "usr_name" {
  description = "this is for user name"
  type = list(string)
  default = ["imti","shanu","hasan"]
}
output "all_arn" {
 value = aws_iam_user.demo[0].arn
}
output "all_tags" {
 value = aws_iam_user.demo[0].tags
}

