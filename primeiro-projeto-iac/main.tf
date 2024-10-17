module "s3" {
  source         = "./modulos/s3"
  s3_bucket_name = "ronca-iac"
}

module "cloudfront" {
  source             = "./modulos/cloudfront"
  origin_id          = module.s3.bucket_id
  bucket_domain_name = module.s3.bucket_domain_name
  depends_on = [
    module.s3
  ]
}