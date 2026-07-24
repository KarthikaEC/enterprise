locals {

  resource_groups = {

    net = "net"

    kv = "kv"

    log = "log"

    id = "id"

    app = "app"

    shared = "shared"

  }
  
  locals {

  mandatory_tags = {

    environment         = var.environment
    project             = var.project_name
    owner               = var.owner_email
    cost_centre         = var.cost_centre
    data_classification = var.data_classification
    managed_by          = "Terraform"
    workload            = var.workload_name
    region              = local.region_tag

  }

  tags = merge(local.mandatory_tags, var.additional_tags)

}

}