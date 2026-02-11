module "vpc_argocd" {
    source       = "../modules/vpc"
    project_id   = var.project_id
    network_name = "vpc-argocd"
}