output "efs-mt" {
    value   = [ aws_efs_mount_target.efs-mt-data.*.dns_name ]
}
