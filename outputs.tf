output "name" {
  value = kubernetes_pod.demoapp.metadata.0.name
}
