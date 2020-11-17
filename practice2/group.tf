resource "aws_iam_group" "infosec" {
    name = "infosec"
    path = "/"
}

resource "aws_iam_group_membership" "infosec_team" {
  name = "infosec-group-membership"
  users = [
    "${aws_iam_user.ron.name}",
    "${aws_iam_user.sam.name}",
    "${aws_iam_user.billy.name}"
  ]
  group = "${aws_iam_group.infosec.name}"
}