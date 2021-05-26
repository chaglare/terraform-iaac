resource "aws_iam_policy" "poweruser_policy" {
  name = "poweruser_policy"
  path = "/"
  description = "Infosec power user policy"
  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "NotAction": [
                "iam:*",
                "organizations:*",
                "account:*"
            ],
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": [
                "iam:CreateServiceLinkedRole",
                "iam:DeleteServiceLinkedRole",
                "iam:ListRoles",
                "organizations:DescribeOrganization",
                "account:ListRegions"
            ],
            "Resource": "*"
        }
    ]
}
EOF
}

resource "aws_iam_group_policy_attachment" "test-attach" {
  group       = "${aws_iam_group.infosec.name}"
  policy_arn = "${aws_iam_policy.poweruser_policy.arn}"
}
