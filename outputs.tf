output "load_balancer_dns" {
  description = "DNS name of the load balancer"
  value       = aws_lb.app_alb.dns_name
}
