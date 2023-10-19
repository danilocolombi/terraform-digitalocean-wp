output "stack_wp_lb_ip" {
  value = module.wp_stack.wp_lb_ip
  description = "IP do load balancer"
}

output "stack_wp_vm_ips" {
  value = module.wp_stack.wp_vm_ips
  description = "IPs das máquinas WordPress"
}

output "stack_nfs_vm_ips" {
  value = module.wp_stack.nfs_vm_ips
  description = "IP da máquina NFS"
}

output "stack_wp_db_user" {
  value = module.wp_stack.wp_db_user
  description = "Usuário do banco de dados"
}

# Única forma de ver o output sensível é executando o comando
# terraform output wp_db_password
output "stack_wp_db_password" {
  value = module.wp_stack.wp_db_password
  description = "Senha do banco de dados"
  sensitive = true
}