module "vpc_argocd" {
  source       = "../modules/vpc"
  project_id   = var.project_id
  network_name = "vpc-host"
  depends_on = [ google_project_service.compute ]
}
module "subnets_argocd" {
  source       = "../modules/subnets"
  project_id   = var.project_id
  network_name = module.vpc_argocd.network_name
  subnets = [
    {
      subnet_name   = "subnet-gke-argocd"
      subnet_ip     = "10.0.0.0/23"
      subnet_region = var.region_tokyo
    },
    {
      subnet_name   = "subnet-gke-tokyo-green"
      subnet_ip     = "10.2.0.0/23"
      subnet_region = var.region_tokyo
    },
        {
      subnet_name   = "subnet-gke-tokyo-blue"
      subnet_ip     = "10.4.0.0/23"
      subnet_region = var.region_tokyo
    },
  ]
  secondary_ranges = {
    "subnet-gke-argocd" = [
      {
        range_name    = "subnet-gke-argocd-svc"
        ip_cidr_range = "10.0.64.0/18"
      },
      {
        range_name    = "subnet-gke-argocd-pod"
        ip_cidr_range = "10.1.0.0/16"
      }
    ]
    "subnet-gke-tokyo-green" = [
      {
        range_name    = "subnet-gke-tokyo-green-svc"
        ip_cidr_range = "10.2.64.0/18"
      },
      {
        range_name    = "subnet-gke-tokyo-green-pod"
        ip_cidr_range = "10.3.0.0/16"
      }
    ]
    "subnet-gke-tokyo-blue" = [
      {
        range_name    = "subnet-gke-tokyo-blue-svc"
        ip_cidr_range = "10.4.64.0/18"
      },
      {
        range_name    = "subnet-gke-tokyo-blue-pod"
        ip_cidr_range = "10.5.0.0/16"
      }
    ]
  }
}
