

locals {
    
  full-name="${var.project}.${var.environment}.${var.name}"
  tags = merge({name= local.full-name},
    {code=var.tag}
  )
}
