resource "aws_efs_file_system" "efs-data" {
    creation_token      = "${var.creation_token}"
    performance_mode    = "${var.performance_mode}"
    throughput_mode     = "${var.throughput_mode}"
    encrypted           = "${var.encrypted}"

    tags = merge(
        {
            Name = "${var.name}"
        },
        "${var.default_tags}"
    )
}
resource "aws_efs_mount_target" "efs-mt-data" {
    count   = var.enabled && length(var.subnet_id) > 0 ? length(var.subnet_id) : 0

    file_system_id      = "${aws_efs_file_system.efs-data.id}"
    subnet_id           =  "${element(var.subnet_id, count.index)}"
    security_groups     = "${var.security_groups}"
}
