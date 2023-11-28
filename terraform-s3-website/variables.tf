variable "bucketName" {
  default = "demo.homebase.ca"
  type    = string
}
variable "indexDoc" {
  description = "The index document for the website."
  default = "index.html"
}
variable "errorDoc" {
  description = "The error document for the website."
  default = "404.html"
}