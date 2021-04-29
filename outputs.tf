output "efs-mt" {
    value   = [ aws_efs_mount_target.main.*.dns_name ]
}
