resource "aws_iam_group" "developers" {
    name = "developers"
    path = "/"
}

resource "aws_iam_group_membership" "developers_team" {
  name = "developers-group-membership"
  users = [
    "${aws_iam_user.bob.name}",
    "${aws_iam_user.tom.name}",
    "${aws_iam_user.ben.name}"
  ]
  group = "${aws_iam_group.developers.name}"
}

resource "aws_iam_group" "Management" {
    name = "Management"
    path = "/"
}

resource "aws_iam_group_membership" "Management_team" {
  name = "Management-group-membership"
  users = [
    "${aws_iam_user.ben.name}"
  ]
  group = "${aws_iam_group.Management.name}"
}