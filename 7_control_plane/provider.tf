data "aws_availability_zone" "aws_azs" {
  count = "${length(var.aws_azs)}"
  name = "${format("%s%s", data.aws_region.current.name, element(var.aws_azs, count.index))}"
}